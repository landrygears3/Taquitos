using Comandero.Models.Catalogs;
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
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    class VariosSaboresViewModel : ViewModelBase
    {
        #region modal
        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }

        private int _cantidad;

        public int Cantidad
        {
            get { return _cantidad; }
            set { SetProperty(ref _cantidad, value); }
        }
        #endregion

        #region inits
        private HttpClient httpClient;
        private ProductoModel PlatoSeleccionado;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        private string tipoplato = "";
        private int mesa;
        private int idPlato;
        public AsyncCommand MasCommand { get; set; }
        public AsyncCommand MenosCommand { get; set; }
        public AsyncCommand AgregarDataCommand { get; set; }
        private readonly HubConnection _connection;
        public ObservableCollection<SaborModel> Sabores { get; set; }
        public VariosSaboresViewModel(INavigationService navigationService) : base(navigationService)
        {
            MasCommand = new AsyncCommand(MasCommandExecute);
            MenosCommand = new AsyncCommand(MenosCommandExecute);
            AgregarDataCommand = new AsyncCommand(AgregarDataCommandExecute);
            Title = "Sabores";
            Sabores = new ObservableCollection<SaborModel>();
            _connection = new HubConnectionBuilder()
.WithUrl(SesionModel.Host + "/platoHub")
.Build();

        }

        #endregion

        #region get
        private void llenaSabores()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                //timer.Stop();
                try
                {
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/Sabores?TipoSabor="+ PlatoSeleccionado.Descripcion;
                    HttpResponseMessage response = await httpClient.GetAsync(query);
                    Sabores.Clear();
                    if (response.IsSuccessStatusCode)
                    {
                        decimal auxtotal = 0;
                        string json = await response.Content.ReadAsStringAsync();
                        List<SaborModel> data = JsonConvert.DeserializeObject<List<SaborModel>>(json);
                        foreach (SaborModel items in data)
                        {
                            items.Check = false;
                            Sabores.Add(items);
                        }

                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    colores();
                    IsLoading = false;
                }
            });
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

        #region Methods
        public async Task EnviarPlato()
        {
            IsLoading = true;
            List<Models.Negociantes.PlatoModel> momdelosubida = new List<Models.Negociantes.PlatoModel>
            {
                new Models.Negociantes.PlatoModel()
            };
            momdelosubida.Last().Id = idPlato;
            momdelosubida.Last().IdMesa = mesa;
            momdelosubida.Last().idProducto = PlatoSeleccionado.Id;
            momdelosubida.Last().Cantidad = PlatoSeleccionado.Cantidad;
            momdelosubida.Last().Estatus = "Enviado";
            momdelosubida.Last().Costo = PlatoSeleccionado.Costo;
            momdelosubida.Last().Nombre = PlatoSeleccionado.NombreProducto;
            momdelosubida.Last().Adicionales = PlatoSeleccionado.adicionales;
            await _connection.InvokeAsync("EnviarPlato", momdelosubida, SesionModel.sucursal, "");
            await NavigationService.GoBackAsync();

        }
        private void colores()
        {
            Color c1 = new Color();
            Color c2 = new Color();
            c1 = Color.FromRgb(222, 222, 222);
            c2 = Color.FromRgb(243, 243, 243);
            var aux = true;
            foreach (var item in Sabores)
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
        #region events
        private async Task AgregarDataCommandExecute()
        {
            List<string> sabores = new List<string>();
            foreach (var item in Sabores)
            {
                if (item.Check)
                {
                    sabores.Add(item.Id.ToString());
                }
            }
            if (sabores.Count > 0)
            {
                for (int i = 0; i < sabores.Count; i++)
                {
                    PlatoSeleccionado.adicionales += sabores[i];
                    if ((i + 1) < sabores.Count)
                    {
                        PlatoSeleccionado.adicionales += ",";
                    }
                }
                PlatoSeleccionado.Cantidad = Cantidad;
                if (tipoplato == "Platillo")
                {
                    await EnviarPlato();
                }
                else
                {
                    NavigationParameters parm = new NavigationParameters
                {
                    { "TipoSabor", PlatoSeleccionado }
                };
                    await NavigationService.GoBackAsync(parm);

                }
            }

           
        }

        private async Task MasCommandExecute()
        {
            try
            {
                Cantidad++;

            }catch (Exception ex)
            {

            }
        }

        private async Task MenosCommandExecute()
        {
            try
            {
                if(Cantidad >= 1)
                {
                    Cantidad--;
                }
            }catch (Exception ex)
            {

            }
        }

        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("TipoSabor", out ProductoModel platoseleccionado))
            {
                PlatoSeleccionado = platoseleccionado;
            }
            if (parameters.TryGetValue("Entrada", out string tipoplato))
            {
                this.tipoplato = tipoplato;
            }
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }

            if (parameters.TryGetValue("idPlato", out int idplato))
            {
                idPlato = idplato;
            }

        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        public virtual void OnPageAppearing()
        {
            StartAsync();
            llenaSabores();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion

    }
}
