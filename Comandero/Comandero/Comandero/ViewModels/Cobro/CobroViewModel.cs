using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Services.Printers;
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
using System.Drawing;
using System.IO;
using System.IO.IsolatedStorage;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
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
        private string pagorecibido;

        public string Pagorecibido
        {
            get { return pagorecibido; }
            set { SetProperty(ref pagorecibido, value); }
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
        Print prn = new Print();
        List<Models.Negociantes.PlatoModel> productos;
        private readonly HubConnection _connection;
        public AsyncCommand CerrarCuentaCommand { get; set; }

        private HttpClient httpClient;
        //Productos
        public ObservableCollection<CobroModel> Productos { get; set; }
        public CobroViewModel(INavigationService navigationService) : base(navigationService)
        {
            CerrarCuentaCommand = new AsyncCommand(CerrarCuentaCommandExecute);
            Productos = new ObservableCollection<CobroModel>();
            Pagorecibido = "";
            prn.GetDeviceList();
            Title = "Cobro";
            _connection = new HubConnectionBuilder()
                .WithUrl(SesionModel.Host + "/platoHub")
                .Build();

        }
        #endregion


        #region methods
        private void imprime()
        {
            const string ESC = "\u001B";
            const string GS = "\u001D";
            const string InitializePrinter = ESC + "@";
            const string BoldOn = ESC + "E" + "\u0001";
            const string BoldOff = ESC + "E" + "\0";
            const string DoubleOn = GS + "!" + "\u0011";  // 2x sized text (double-high + double-wide)
            const string DoubleOff = GS + "!" + "\0";
            string text = "---------Tacos de asada---------\n";
            foreach (var model in Productos)
            {
               string texto = "";
               string nombreaux = model.Name;
               nombreaux = nombreaux.Replace("ñ", "n");
               nombreaux = nombreaux.Replace("á", "a");
               nombreaux = nombreaux.Replace("í", "i");
               nombreaux = nombreaux.Replace("ó", "o");
               nombreaux = nombreaux.Replace("ú", "u");
               nombreaux = nombreaux.Replace("é", "e");
               string cantidadaux = model.Cantidad.ToString();
               string precioauz = model.Total.ToString("0.##");

                int tama = 32 - (nombreaux + " " + cantidadaux + " " +  precioauz).Length;

                for (int i = 0; i < tama; i++)
                {
                    texto += "-";
                }
                texto = cantidadaux + " " + nombreaux + texto + "$" +precioauz;
                text += texto + "\n";
            }
            text += "\n\n";
            string currentaux = CurrentTotal.ToString();
            text += BoldOn + "Total:  " + currentaux + BoldOff;
            text += "\n\n\n\n";
            prn.Imprime(text);

        }
        public async Task StartAsync()
        {
            try
            {
                if (_connection.State != HubConnectionState.Connected)
                {
                    await _connection.StartAsync();
                }

                // Conexión exitosa
            }
            catch (Exception ex)
            {
                // Manejar errores de conexión
            }
        }

        public async Task StopAsync()
        {
            try
            {
                if (_connection.State != HubConnectionState.Disconnected)
                {
                    await _connection.StopAsync();
                }

                // Conexión exitosa
            }
            catch (Exception ex)
            {
                // Manejar errores de conexión
            }
        }
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
        public async Task EnviarPlato(List<Models.Negociantes.PlatoModel> momdelosubida,string tipoE)
        {
            IsLoading = true;
            await _connection.InvokeAsync("EnviarPlato", momdelosubida, SesionModel.sucursal, tipoE);

        }
        private async Task CerrarCuentaCommandExecute()
        {
            string mensaje = "¿Desea cerrar la cuenta y cobrar productos?";
            bool salir = true;
            if (!Pagorecibido.Trim().Equals(string.Empty))
            {
                try
                {
                    decimal pagoaux = decimal.Parse(Pagorecibido);
                    if (pagoaux > currentTotal)
                    {
                        mensaje += "\nDeberá entregar un cambio de $" + (pagoaux - currentTotal).ToString("0.##"); ;
                        salir = await App.Current.MainPage.DisplayAlert("Atención", mensaje, "No", "Si, cobrar");
                    }
                    else
                    {
                        mensaje = "El pago recibido es menor a la cantidad por cobrar";
                        await App.Current.MainPage.DisplayAlert("Atención", mensaje, "Aceptar");
                    }

                }
                catch
                {
                    mensaje = "El monto recibido no tiene un valor valido";
                    await App.Current.MainPage.DisplayAlert("Atención", mensaje, "Aceptar");
                }
            }
            else
            {
                salir = await App.Current.MainPage.DisplayAlert("Atención", mensaje, "No", "Si, cobrar");
            }

            if (!salir)
            {
                try
                {
                    IsLoading = true;
                    if (productos == null)
                    {
                        productos = new List<Models.Negociantes.PlatoModel>();
                    }
                    var jsonData = JsonConvert.SerializeObject(productos);
                    var content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                    httpClient = new HttpClient();
                    string query = "/Cobro?mesa=" + mesa + "&sucursal=" + SesionModel.sucursal + "&tipo=" + Tipo;
                    HttpResponseMessage message = await httpClient.PostAsync(SesionModel.Host + query, content);

                    await EnviarPlato(productos, "Tick");
                    //imprime();

                }
                catch (Exception ex)
                {
                    await App.Current.MainPage.DisplayAlert("Atención", "Ocurrió un error con el cobro", "Aceptar");
                }
                finally
                {
                    IsLoading = false;
                    await NavigationService.GoBackToRootAsync();
                }

            }


        }
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
            if (parameters.TryGetValue("Productos", out List<Models.Negociantes.PlatoModel> productos))
            {
                Productos.Clear();
                this.productos = productos;
                Dictionary<int, ResumenPlatoModel> resumenPlatos = new Dictionary<int, ResumenPlatoModel>();
                foreach (var items in productos)
                {
                    if (!resumenPlatos.ContainsKey(items.idProducto))
                    {
                        resumenPlatos.Add(items.idProducto, new ResumenPlatoModel());
                    }
                    resumenPlatos[items.idProducto].Id = items.Id;
                    resumenPlatos[items.idProducto].idComanda = 0;
                    resumenPlatos[items.idProducto].idProducto = items.idProducto;
                    resumenPlatos[items.idProducto].cantidad += items.Cantidad;
                    resumenPlatos[items.idProducto].Sucursal = SesionModel.sucursal;
                    resumenPlatos[items.idProducto].estatus = items.Estatus;
                    resumenPlatos[items.idProducto].Name = items.Nombre;
                    resumenPlatos[items.idProducto].subtotal += items.Costo * items.Cantidad;

                }
                decimal auxCurrentTotal = 0;
                foreach (var item in resumenPlatos)
                {
                    Productos.Add(new CobroModel());
                    Productos.Last().Name = item.Value.Name;
                    Productos.Last().Total = item.Value.subtotal;
                    Productos.Last().Cantidad = item.Value.cantidad;
                    auxCurrentTotal += item.Value.subtotal;
                }
                CurrentTotal = auxCurrentTotal;
            }

        }
        public virtual void OnPageAppearing()
        {
            if(Tipo != "Llevar")
            {
                llenaPlatos();
            }
            StartAsync();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion
    }
}
