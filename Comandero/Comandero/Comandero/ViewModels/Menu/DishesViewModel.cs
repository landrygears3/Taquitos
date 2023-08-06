﻿using Comandero.Models.Catalogs;
using Comandero.Services.Api;
using Comandero.UI.IconsApp;
using Comandero.UI.ItemsCollectionView;
using Comandero.UI.Renderers;
using Comandero.Utils.Commands;
using DryIoc;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Common;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class DishesViewModel : ViewModelBase
    {

        #region modal
        private bool _isLoading;
        public bool IsLoading
        {
            get => _isLoading;
            set
            {
                if (_isLoading != value)
                {
                    _isLoading = value;
                    OnPropertyChanged();
                }
            }
        }


        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion


        #region Inits
        private HttpClient httpClient;


        private string myTextProperty;
        public AsyncCommand AgregarNewDataCommand { get; set; }

        public string MyTextProperty
        {
            get { return myTextProperty; }
            set { SetProperty(ref myTextProperty, value); }
        }

        private decimal currentTotal;

        public decimal CurrentTotal
        {
            get { return currentTotal; }
            set { SetProperty(ref currentTotal, value); }
        }

        public ICommand SelectedItemCommand => new Command(async (item) => await SelectedItemCommandExecute(item));

        public ObservableCollection<PlatoModel> Platos { get; set; }

        private int mesa = 0;

        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;

        public DishesViewModel(INavigationService navigationService) : base(navigationService)
        {
            AgregarNewDataCommand = new AsyncCommand(AgregarNewDataCommandExecute);
            Title = "Comanda";
            httpClient = new HttpClient();
            Platos = new ObservableCollection<PlatoModel>();

        }
        #endregion


        #region methods
        private void colores()
        {
            Color c1 = new Color();
            Color c2 = new Color();
            c1 = Color.FromRgb(222, 222, 222);
            c2 = Color.FromRgb(243, 243, 243);
            var aux = true;
            foreach (var item in Platos)
            {
                if (aux)
                {
                    item.BgColor = c1;
                }
                else
                {
                    item.BgColor = c2;
                }
                aux = !aux;

            }
        }
        #endregion


        #region get
        private void llenaPlatos()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                
                try
                {
                    httpClient = new HttpClient();
                    decimal auxCurrentTotal = 0;
                    // Realiza una solicitud GET al servicio web
                    string query = SesionModel.Host + "/ResumenPlatos?sucursal=" + SesionModel.sucursal + "&mesa=" + mesa;
                    HttpResponseMessage response = await httpClient.GetAsync(query);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<PlatoModel>>(json);
                        Platos.Clear();
                        foreach (var items in data)
                        {
                            items.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                            items.Name = "Comensal " + items.Id;
                            Platos.Add(items);
                            auxCurrentTotal += items.subtotal;
                        }
                        CurrentTotal = auxCurrentTotal;
                        // Utiliza los datos recibidos como desees
                        // ...
                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    //httpClient.Dispose();
                    IsLoading = false;
                }
                colores();
            });
        }
        #endregion


        #region events
        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is PlatoModel itemMenu)
            {
                NavigationParameters param = new NavigationParameters { { "IdPlato", itemMenu.Id }, { "IdMesa", mesa } };
                await NavigationService.NavigateAsync("Plato", param);
            }
        }

        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
                MyTextProperty = "Mesa " + idMesa;
                
            }
        }

        public virtual void OnPageAppearing()
        {
            llenaPlatos();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            PageDisappearing?.Invoke(this, EventArgs.Empty);

        }


        private async Task AgregarNewDataCommandExecute()
        {

            NavigationParameters param = new NavigationParameters { { "IdPlato", 0 }, { "IdMesa", mesa } };
            await NavigationService.NavigateAsync("Plato", param);


        }
        #endregion
    }
}
