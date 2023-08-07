using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Utils.Commands;
using DryIoc;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Common;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using Xamarin.Forms;

namespace Comandero.ViewModels.Cobro
{
    internal class CobroViewModel : ViewModelBase
    {
        #region modal

        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }


        private decimal currentTotal;

        public decimal CurrentTotal
        {
            get { return currentTotal; }
            set { SetProperty(ref currentTotal, value); }
        }


        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion


        #region inits
        string Tipo;
        int mesa;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        List<Models.Negociantes.PlatoModel> productos;
        private HttpClient httpClient;
        //Productos
        public ObservableCollection<CobroModel> Productos { get; set; }
        public CobroViewModel(INavigationService navigationService) : base(navigationService)
        {
            Productos = new ObservableCollection<CobroModel>();
            Title = "Cobro";

        }
        #endregion


        #region methods
        #endregion

        #region get
        private void llenaPlatos()
        {

            Device.BeginInvokeOnMainThread(async () =>
            {
                IsLoading = true;
                try
                {

                    httpClient = new HttpClient();
                    decimal auxCurrentTotal = 0;
                    // Realiza una solicitud GET al servicio web
                    string query = SesionModel.Host + "/ResumenCobro?sucursal=" + SesionModel.sucursal + "&mesa=" + mesa;
                    HttpResponseMessage response = await httpClient.GetAsync(query);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<ResumenPlatoModel>>(json);
                        Productos.Clear();
                        Dictionary<int, ResumenPlatoModel> resumenPlatos = new Dictionary<int, ResumenPlatoModel>();
                        foreach (var items in data)
                        {
                            if (!resumenPlatos.ContainsKey(items.idProducto))
                            {
                                resumenPlatos.Add(items.idProducto,new ResumenPlatoModel());
                            }
                            resumenPlatos[items.idProducto].Id = items.Id;
                            resumenPlatos[items.idProducto].idComanda = items.idComanda;
                            resumenPlatos[items.idProducto].idProducto = items.idProducto;
                            resumenPlatos[items.idProducto].cantidad += items.cantidad;
                            resumenPlatos[items.idProducto].Sucursal = items.Sucursal;
                            resumenPlatos[items.idProducto].estatus = items.estatus;
                            resumenPlatos[items.idProducto].Name = items.Name;
                            resumenPlatos[items.idProducto].subtotal += items.subtotal;

                        }
                        foreach(var item in resumenPlatos)
                        {
                            Productos.Add(new CobroModel());
                            Productos.Last().Name = item.Value.Name;
                            Productos.Last().Total =  item.Value.subtotal;
                            Productos.Last().Cantidad = item.Value.cantidad;
                            auxCurrentTotal += item.Value.subtotal;
                        }
                        CurrentTotal = auxCurrentTotal;
                        // Utiliza los datos recibidos como desees
                        // ...
                        httpClient.Dispose();
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

            });
        }
        #endregion

        #region events
        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("Tipo", out string tipo))
            {
                Tipo = tipo;
            }
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }
            if (parameters.TryGetValue("Productos", out List<Models.Negociantes.PlatoModel> Productos))
            {
                productos = Productos;
            }

        }
        public virtual void OnPageAppearing()
        {
            llenaPlatos();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion
    }
}
