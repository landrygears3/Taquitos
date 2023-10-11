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
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
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
        //public ICommand SelectedItemCommand => new Command(async (item) => await SelectedItemCommandExecute(item));
        public CocinaViewModel(INavigationService navigationService) : base(navigationService)
        {
            Platos = new ObservableCollection<Models.Catalogs.PlatoModel>();
            Title = "Cocina";
            _connection = new HubConnectionBuilder()
                .WithUrl(SesionModel.Host + "/platoHub")
                .Build();

            _connection.On<List<ResumenPlatoModel>, string>("RecibePlato", (list,entrada) =>
            {

                string[] evita = { "Cocina" };
                if (!evita.Contains(entrada)) 
                {
                    llenaPlatos();
                    Reproduceaudio();
                }


            });


        }
        #endregion



        #region Methods
        bool reproduciendo = false;
        public async Task Reproduceaudio()
        {
            if (!reproduciendo)
            {
                var assembly = typeof(App).GetTypeInfo().Assembly;
                Stream audioStream = assembly.GetManifestResourceStream("Comandero.Recursos.UnTaco.mp3");
                var audio = Plugin.SimpleAudioPlayer.CrossSimpleAudioPlayer.Current;
                audio.Load(audioStream);
                int timer = 0;
                while (timer <= 2)
                {
                    reproduciendo = true;
                    audio.Play();
                    Thread.Sleep(5000);
                    timer++;
                }
                reproduciendo = false;
            }

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
        private async Task llenaPlatos()
        {
            IsLoading = true;

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
                            Models.Catalogs.PlatoModel plato = new Models.Catalogs.PlatoModel();
                            
                            plato.Id = items.Id;                                  
                            plato.idComanda = items.idComanda;                               
                            plato.idProducto = items.idProducto;                               
                            plato.cantidad = items.cantidad;                               
                            plato.estatus = items.estatus;
                            string tipoSalida = items.Namemesa.Split(' ')[0];
                        if (tipoSalida.Equals("Llevar"))
                        {
                            plato.NombreComensal = items.NombreComensal;
                        }
                        else
                        {
                            plato.NombreComensal = items.Namemesa;
                        }

                        plato.Nombre = items.Name;                           
                            plato.NombreMesa = items.Namemesa;
                            plato.NombrePlato = "Plato " + items.Id;
                            plato.idc = items.idc;
                            plato.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(plato));
                        Platos.Add(plato);
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
                    Thread.Sleep(1000);
                    IsLoading = false;
                    colores();
                }

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
        public async Task EnviarPlato(List<Models.Negociantes.PlatoModel> momdelosubida, string tipoE)
        {
            IsLoading = true;
            await _connection.InvokeAsync("EnviarPlato", momdelosubida, SesionModel.sucursal, tipoE,"Cocina");

        }
        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is Models.Catalogs.PlatoModel itemMenu)
            {
                try
                {
                    IsLoading = true;
                    httpClient = new HttpClient();
                    string tipoSalida = itemMenu.NombreMesa.Split(' ')[0];
                    string query = "/Cocina?Id="+itemMenu.Id + "&comanda="+itemMenu.idComanda+"&producto="+itemMenu.idProducto+ "&idc="+itemMenu.idc+ "&tipo="+tipoSalida;
                    HttpResponseMessage message = await httpClient.PostAsync(SesionModel.Host + query,null);
                    await llenaPlatos();
                    await EnviarPlato(new List<Models.Negociantes.PlatoModel>(), "Tick");
                }
                catch (Exception ex)
                {
                    await App.Current.MainPage.DisplayAlert("Atención", "Ocurrió un error al actualizar", "Aceptar");
                }
                finally
                {
                    IsLoading = false;
                }
            }
        }
        #endregion
    }
}
