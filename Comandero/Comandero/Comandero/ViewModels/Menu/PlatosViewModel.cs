using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Services.Api;
using Comandero.Utils.Commands;
using DryIoc;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    class PlatosViewModel : ViewModelBase
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
        private HttpClient httpClient;
        private readonly HubConnection _connection;
        public ObservableCollection<Models.Catalogs.PlatoModel> Platos { get; set; }

        public AsyncCommand AgregarPlato { get; set; }
        private int plato;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        private string myTextProperty;

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
        public ICommand SelectedEliminaMesa => new Command(async (item) => await SelectedItemCommandExecute(item));
        public PlatosViewModel(INavigationService navigationService) : base(navigationService)
        {

            Title = "Plato";
            AgregarPlato = new AsyncCommand(AgregarPlatoExecute);
            httpClient = new HttpClient();
            Platos = new ObservableCollection<Models.Catalogs.PlatoModel>();
            _connection = new HubConnectionBuilder()
            .WithUrl(SesionModel.Host + "/platoHub")
            .Build();

            _connection.On<List<ResumenPlatoModel>, string>("RecibePlato", (list, entrada) =>
            {
                if (list.Count < 1)
                {
                    llenaPlatos();
                }
                else
                {
                    llenadoPlatosHub(list);
                }

            });

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
        private void llenadoPlatosHub(List<ResumenPlatoModel> list)
        {
            IsLoading = true;
            Platos.Clear();
            CurrentTotal = 0;
            foreach (ResumenPlatoModel items in list)
            {
                Platos.Add(new Models.Catalogs.PlatoModel());
                Platos.Last().Id = items.Id;
                Platos.Last().idComanda = items.idComanda;
                Platos.Last().idProducto = items.idProducto;
                Platos.Last().cantidad = items.cantidad;
                Platos.Last().estatus = items.estatus;
                Platos.Last().Icon = items.Icon;
                Platos.Last().subtotal = items.subtotal;
                Platos.Last().Name = items.Name;
                Platos.Last().esVisible = false;
                Platos.Last().idc = items.idc;
                Platos.Last().SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(items));
                Platos.Last().SelectedEliminaMesa = new Command(async (item) => await EliminaProducto(items));
                CurrentTotal += items.subtotal;
                //Tables.Add(items);                
            }
            colores();
            IsLoading = false;
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


        #region get
        private void llenaPlatos()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                //timer.Stop();
                try
                {
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/Platos?sucursal=" + SesionModel.sucursal + "&mesa=" + mesa + "&plato=" + plato;
                    HttpResponseMessage response = await httpClient.GetAsync(query);
                    if (response.IsSuccessStatusCode)
                    {
                        decimal auxtotal = 0;
                        string json = await response.Content.ReadAsStringAsync();
                        List<ResumenPlatoModel> data = JsonConvert.DeserializeObject<List<ResumenPlatoModel>>(json);
                        llenadoPlatosHub(data);

                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    IsLoading = false;
                    StartAsync();
                }
            });
        }

        #endregion


        #region events
        private async Task AgregarPlatoExecute()
        {
            long auxplato = 0;
            if (Platos.Count > 0)
            {
                auxplato = Platos[0].Id;
            }
            NavigationParameters param = new NavigationParameters { { "IdMesa", mesa }, { "idPlato", auxplato } };
            await NavigationService.NavigateAsync("TipoMenu", param);

        }




        public virtual void OnPageAppearing()
        {
            //timer.Start();
            llenaPlatos();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        public async Task EnviarPlato(List<Models.Negociantes.PlatoModel> momdelosubida, string tipoE)
        {
            IsLoading = true;
            await _connection.InvokeAsync("EnviarPlato", momdelosubida, SesionModel.sucursal, tipoE,"Platos");

        }
        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }

            if (parameters.TryGetValue("IdPlato", out int idPlato))
            {
                plato = idPlato;
                MyTextProperty = "Comensal " + plato;
                llenaPlatos();
            }
            if (parameters.TryGetValue("back", out bool ret))
            {
                if (ret)
                {
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        await NavigationService.GoBackAsync();
                    });
                }
            }
        }

        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is Models.Catalogs.PlatoModel itemMenu)
            {
                if (itemMenu.estatus.Equals("Enviado"))
                {
                    //NavigationParameters param = new NavigationParameters { { "IdPlato", itemMenu.Id }, { "IdMesa", mesa } };
                    //await NavigationService.NavigateAsync("Plato", param);
                }

            }
        }
        private async Task EliminaProducto(object item)
        {
            if (item is ResumenPlatoModel itemMenu)
            {
                if (itemMenu.estatus.Equals("Enviado"))
                {
                    IsLoading = true;
                    httpClient = new HttpClient();
                    string query = "/Platos?idc=" + itemMenu.idc;
                    HttpResponseMessage response = await httpClient.DeleteAsync(SesionModel.Host + query);
                    //llenaPlatos();
                    if (response.IsSuccessStatusCode)
                    {
                        await EnviarPlato(new List<Models.Negociantes.PlatoModel>(), "Tick");
                    }
                    else
                    {
                        if(response.StatusCode == HttpStatusCode.NotModified)
                        {
                            await App.Current.MainPage.DisplayAlert("Atención", "El plato ya fue preparado en cocina no puede ser eliminado", "Aceptar");
                        }
                        else
                        {
                            await App.Current.MainPage.DisplayAlert("Atención", "Ocurrió un error en el servidor al eliminar el plato", "Aceptar");
                        }
                    }
                    IsLoading = false;

                }
                else
                {
                   await App.Current.MainPage.DisplayAlert("Atención", "El plato ya fue preparado en cocina no puede ser eliminado", "Aceptar");
                }

            }
        }
        #endregion

    }
}
