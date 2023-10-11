﻿using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Utils.Commands;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Common;
using System.IO;
using System.Net.Http;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    internal class TipoMenuViewModel : ViewModelBase
    {
        #region modal
        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }        
        
        private bool _habilitado;

        public bool habilitado
        {
            get { return _habilitado; }
            set { SetProperty(ref _habilitado, value); }
        }

        #endregion

        #region inits
        private HttpClient httpClient;
        private int mesa;
        private int idPlato;
        private string Tipo;
        private int tipoMenu;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        public AsyncCommand AgregarDataCommand { get; set; }

        //AgregarDataCommand
        public ObservableCollection<TipoMenuItemModel> Platos { get; set; }
        public TipoMenuViewModel(INavigationService navigationService) : base(navigationService)
        {
            Platos = new ObservableCollection<TipoMenuItemModel>();
            Title = "TipoMenu";
            AgregarDataCommand = new AsyncCommand(AgregarDataCommandExecute);

        }

        #endregion

        #region get
        private void llenaMenu()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                //timer.Stop();
                try
                {
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/ItemTipoProductos";
                    HttpResponseMessage response = await httpClient.GetAsync(query);
                    Platos.Clear();
                    if (response.IsSuccessStatusCode)
                    {
                        decimal auxtotal = 0;
                        string json = await response.Content.ReadAsStringAsync();
                        List<TipoMenuItemModel> data = JsonConvert.DeserializeObject<List<TipoMenuItemModel>>(json);
                        foreach (TipoMenuItemModel items in data)
                        {
                            //item.Imagen = "Comandero." + item.Imagen;
                            items.SelectedItemCommand = new Command(async (item) => await NavegaPlatoExecute(items));
                            items.Nombre = items.Nombre.Replace("Quesadilla","QK");
                            Platos.Add(items);
                        }

                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    IsLoading = false;
                }
            });
        }

        #endregion

        #region events
        private async Task AgregarDataCommandExecute()
        {
            if (Tipo == "Llevar")
            {
                if (SesionModel.ParaLlevar.Count>=1)
                {
                    NavigationParameters param = new NavigationParameters { { "Tipo", "Llevar" }, { "IdMesa", -1 }, { "Productos", SesionModel.ParaLlevar } };
                    await NavigationService.NavigateAsync("Cobro", param);
                }
                else
                {
                    await App.Current.MainPage.DisplayAlert("Atención", "No hay productos por cobrar", "Aceptar");
                }
            }
            
        }

        private async Task NavegaPlatoExecute(object item)
        {
            if (item is TipoMenuItemModel itemMenu)
            {
                if(itemMenu.Tipo == "Item")
                {
                    NavigationParameters param = new NavigationParameters { { "IdMesa", mesa }, { "idPlato", idPlato }, { "TipoProducto", itemMenu.Id }, { "Tipo", Tipo } };
                    await NavigationService.NavigateAsync("Comandero", param);
                }
                if (itemMenu.Tipo == "Platillo")
                {
                    ProductoModel model  = new ProductoModel();
                    HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Productos?TipoProducto=" + itemMenu.Id);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<ProductoModel>>(json);

                        foreach (var items in data)
                        {
                            model = items;
                        }
                        // Utiliza los datos recibidos como desees
                        // ...
                    }

                    NavigationParameters param = new NavigationParameters { { "TipoSabor", model },{ "Entrada" , "Platillo"}, { "IdMesa", mesa }, { "idPlato", idPlato },{ "Tipo",Tipo } };
                    await NavigationService.NavigateAsync("Sabores", param);
                }
            }


        }

        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            habilitado = false;
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }

            if (parameters.TryGetValue("idPlato", out int idplato))
            {
                idPlato = idplato;
            }
            if (parameters.TryGetValue("Tipo", out string tipo))
            {
                Tipo = tipo;
            }
            if (parameters.TryGetValue("back", out bool ret))
            {
                if (ret)
                {
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        NavigationParameters param = new NavigationParameters { { "back", true } };
                        await NavigationService.GoBackAsync(param);
                    });
                }
            }
            if(Tipo == "Llevar")
            {
                habilitado = true;
            }
        }

        public virtual void OnPageDisappearing()
        {
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        public virtual void OnPageAppearing()
        {
            llenaMenu();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion
    }
}
