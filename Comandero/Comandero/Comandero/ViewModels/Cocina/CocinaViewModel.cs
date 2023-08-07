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
using System.Data.Common;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Comandero.ViewModels.Cocina
{
    internal class CocinaViewModel : ViewModelBase
    {
        #region modal

        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }
        #endregion

        #region inits
        private readonly HubConnection _connection;
        private HttpClient httpClient;
        public event EventHandler PageAppearing;
        public event EventHandler Disappearing;
        public ObservableCollection<Models.Catalogs.PlatoModel> Platos { get; set; }

        public CocinaViewModel(INavigationService navigationService) : base(navigationService)
        {
            Platos = new ObservableCollection<Models.Catalogs.PlatoModel>();
            Title = "Cocina";
            _connection = new HubConnectionBuilder()
                .WithUrl(SesionModel.Host + "/platoHub")
                .Build();

            _connection.On<List<ResumenPlatoModel>>("RecibePlato", (list) =>
            {
                llenaPlatos();
            });


        }
        #endregion

        #region Methods
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

        #region Update
        #endregion

        #region get
        private void llenaPlatos()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {

                try
                {
                    IsLoading = true;
                    httpClient = new HttpClient();
                    decimal auxCurrentTotal = 0;
                    // Realiza una solicitud GET al servicio web
                    string query = SesionModel.Host + "/Cocina?sucursal=" + SesionModel.sucursal;
                    HttpResponseMessage response = await httpClient.GetAsync(query);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<ResumenPlatoModel>>(json);
                        Platos.Clear();
                        foreach (ResumenPlatoModel items in data)
                        {
                           // items.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                            Platos.Add(new Models.Catalogs.PlatoModel());
                            Platos.Last().Id = items.Id;                                  
                            Platos.Last().idComanda = items.idComanda;                               
                            Platos.Last().idProducto = items.idProducto;                               
                            Platos.Last().cantidad = items.cantidad;                               
                            Platos.Last().estatus = items.estatus;                               
                            Platos.Last().Nombre = items.Name;                                   
                            Platos.Last().NombreMesa = items.Namemesa;                               
                            auxCurrentTotal += items.subtotal;
                        }
                        
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
                    colores();
                }

            });
        }
        #endregion

        #region events
        public virtual void OnPageAppearing()
        {
            llenaPlatos();
            StartAsync();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            Disappearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion
    }
}
