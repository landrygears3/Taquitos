
using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.UI.ItemsCollectionView;
using Comandero.Utils.Commands;
using DryIoc;
using ImTools;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Mvvm;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    class ComandaViewModel : ViewModelBase
    {
        #region modal
        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }


        #endregion


        #region Inits
        private int mesa;
        private int idplato;
        private string Tipo = "";
        public AsyncCommand AgregarDataCommand { get; set; }

        public bool habilitado = true;

        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        public ObservableCollection<ProductoModel> Productos { get; set; }
        public ICommand MasCommand => new Command(async (item) => await MasCommandExecute(item));
        public ICommand MenosCommand => new Command(async (item) => await MenosCommandExecute(item));
        private HttpClient httpClient;
        private readonly HubConnection _connection;
        public ComandaViewModel(INavigationService navigationService) : base(navigationService)
        {
            AgregarDataCommand = new AsyncCommand(AgregarDataCommandExecute);

            Productos = new ObservableCollection<ProductoModel>();
            Title = "Comandero";
            httpClient = new HttpClient();

            _connection = new HubConnectionBuilder()
           .WithUrl(SesionModel.Host + "/platoHub")
           .Build();
        }


        #endregion


        #region methods

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
            foreach (var item in Productos)
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

        public async Task EnviarPlato(List<Models.Negociantes.PlatoModel> momdelosubida)
        {
            IsLoading = true;
            await _connection.InvokeAsync("EnviarPlato", momdelosubida, SesionModel.sucursal,"");

        }
        #endregion


        #region get
        private void llenaProductos()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                try
                {
                    // Realiza una solicitud GET al servicio web
                    HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Productos");

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<ProductoModel>>(json);
                        Productos.Clear();
                        foreach (var items in data)
                        {
                            items.MasCommand = new Command(async (item) => await MasCommandExecute(item));
                            items.MenosCommand = new Command(async (item) => await MenosCommandExecute(item));
                            Productos.Add(items);
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
                    colores();
                    IsLoading = false;
                    if(Tipo!="Llevar")
                    {
                        await StartAsync();
                    }
                    
                }
                
            });
        }
        #endregion


        #region events
        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }

            if (parameters.TryGetValue("idPlato", out int idPlato))
            {
                idplato = idPlato;
            }
            if (parameters.TryGetValue("Tipo", out string tipo))
            {
                Tipo = tipo;
            }
        }


        public virtual void OnPageAppearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
            llenaProductos();
        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }




        private async Task AgregarDataCommandExecute()
        {
            if (Tipo == "Llevar")
            {
                await TipoLlevar();
            }
            else
            {
               await TipoMesa();
            }
        }

        private async Task TipoLlevar()
        {
            decimal CurrentTotal = 0;

            try
            {
                IsLoading = true;
                // Realiza una solicitud GET al servicio web
                List<Models.Negociantes.PlatoModel> momdelosubida = new List<Models.Negociantes.PlatoModel>();
                foreach (var model in Productos)
                {
                    if (model.Cantidad > 0)
                    {
                        momdelosubida.Add(new Models.Negociantes.PlatoModel());
                        momdelosubida.Last().Id = idplato;
                        momdelosubida.Last().IdMesa = mesa;
                        momdelosubida.Last().idProducto = model.Id;
                        momdelosubida.Last().Cantidad = model.Cantidad;
                        momdelosubida.Last().Estatus = "Enviado";
                        momdelosubida.Last().Costo = model.Costo;
                        momdelosubida.Last().Nombre = model.NombreProducto;
                    }
                }
                bool salir = false;
                if (momdelosubida.Count() > 0)
                {
                    NavigationParameters param = new NavigationParameters { { "Tipo", "Llevar" }, { "IdMesa", 0 }, { "Productos", momdelosubida } };
                    await NavigationService.NavigateAsync("Cobro", param);

                }
                else
                {
                    salir = await App.Current.MainPage.DisplayAlert("Atención", "¿Deseas salir sin agregar Productos?", "Si", "Seguir agregando");

                }
                if (salir)
                {
                    NavigationParameters param = new NavigationParameters { { "back", true } };
                    await NavigationService.GoBackAsync(param);
                }


            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }
            finally
            {
                IsLoading = false;
                await StopAsync();
            }

        }

        private async Task TipoMesa()
        {
            try
            {
                IsLoading = true;
                // Realiza una solicitud GET al servicio web
                List<Models.Negociantes.PlatoModel> momdelosubida = new List<Models.Negociantes.PlatoModel>();
                foreach (var model in Productos)
                {
                    if (model.Cantidad > 0)
                    {
                        momdelosubida.Add(new Models.Negociantes.PlatoModel());
                        momdelosubida.Last().Id = idplato;
                        momdelosubida.Last().IdMesa = mesa;
                        momdelosubida.Last().idProducto = model.Id;
                        momdelosubida.Last().Cantidad = model.Cantidad;
                        momdelosubida.Last().Estatus = "Enviado";
                    }
                }
                bool salir = false;
                if (momdelosubida.Count() > 0)
                {
                    EnviarPlato(momdelosubida);
                    salir = true;

                }
                else
                {
                    salir = await App.Current.MainPage.DisplayAlert("Atención", "¿Deseas salir sin agregar Productos?", "Si", "Seguir agregando");

                }
                if (salir)
                {
                    NavigationParameters param = new NavigationParameters { { "back", true } };
                    await NavigationService.GoBackAsync(param);
                }


            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }
            finally
            {
                IsLoading = false;
                await StopAsync();
            }
        }
        private async Task MasCommandExecute(object item)
        {
            if (item is ProductoModel itemMenu)
            {
                try
                {
                    for (int i = 0; i < Productos.Count; i++)
                    {
                        if (Productos[i].Id.Equals(itemMenu.Id))
                        {
                            Productos[i].Cantidad = itemMenu.Cantidad;
                        }
                    }
                }
                catch
                {

                }
            }
        }

        private async Task MenosCommandExecute(object item)
        {
            if (item is ProductoModel itemMenu)
            {
                try
                {
                    for (int i = 0; i < Productos.Count; i++)
                    {
                        if (Productos[i].Id.Equals(itemMenu.Id))
                        {
                            Productos[i].Cantidad = itemMenu.Cantidad;
                        }
                    }

                }
                catch
                {

                }
            }
        }
        #endregion

    }
}
