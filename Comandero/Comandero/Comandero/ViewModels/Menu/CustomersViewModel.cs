using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Services.Api;
using Comandero.Utils.Commands;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Common;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Linq;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class CustomersViewModel : ViewModelBase, INotifyPropertyChanged
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
        private readonly HubConnection _connection;
        private readonly HubConnection _connection1;

        public ICommand SelectedItemCommand => new Command(async (item) => await SelectedItemCommandExecute(item));

        public ObservableCollection<TableModel> Tables { get; set; }

        public AsyncCommand NuevaMesaCommand { get; set; }

        public CustomersViewModel(INavigationService navigationService) : base(navigationService)
        {
            Title = "Customers";
            Tables = new ObservableCollection<TableModel>();
            
            _connection = new HubConnectionBuilder()
               .WithUrl(SesionModel.Host + "/mesaHub")
               .Build();

            _connection.On<List<MesaModel>>("RecibeMesa", (list) =>
            {
                llenadoMesasHub(list);
            });

            _connection1 = new HubConnectionBuilder()
            .WithUrl(SesionModel.Host + "/platoHub")
            .Build();

            _connection1.On<List<ResumenPlatoModel>>("RecibePlato", (list) =>
            {
                llenaMesas();
            });
            NuevaMesaCommand = new AsyncCommand(NuevaMesaCommandExecute);
            
        }

        private void llenadoMesasHub(List<MesaModel> list)
        {
            IsLoading = true;
            Tables.Clear();
            foreach (MesaModel items in list)
            {
                Tables.Add(new TableModel());
                Tables.Last().Icon = items.Icon;
                Tables.Last().Name = items.Name;
                Tables.Last().Id = items.Id;
                Tables.Last().Current = items.Current;
                Tables.Last().CurrentCommand = items.CurrentCommand;
                Tables.Last().SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                //Tables.Add(items);                
            }            
            colores();
            IsLoading = false;
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
                    await _connection1.StartAsync();
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
                    await _connection1.StopAsync();
                }

                // Conexión exitosa
            }
            catch (Exception ex)
            {
                // Manejar errores de conexión
            }
        }

        public async Task EnviarMesa()
        {
            IsLoading = true;
            await _connection.InvokeAsync("EnviarMesa", SesionModel.sucursal);

        }
        #endregion


        #region post
        private async Task NuevaMesaCommandExecute()
        {
           await EnviarMesa();

        }
        #endregion


        #region Get
        private void llenaMesas()
        {
            
            Device.BeginInvokeOnMainThread(async () =>
            {
                
                try
                {
                    IsLoading = true;
                    // Realiza una solicitud GET al servicio web
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/Mesa?sucursal=" + SesionModel.sucursal;
                    HttpResponseMessage response = await httpClient.GetAsync(query);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<TableModel>>(json);
                        Tables.Clear();
                        foreach (var items in data)
                        {
                            items.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                            Tables.Add(items);
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
                    IsLoading = false;
                    StartAsync();                    
                }
                colores();
            });
        }
        #endregion


        #region Events
        public event EventHandler PageAppearing;
        public event EventHandler Disappearing;

        public virtual void OnPageAppearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
            llenaMesas();
        }

        public virtual void OnPageDisappearing()
        {
            StopAsync();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }


        private void colores()
        {
            Color c1 = new Color();
            Color c2 = new Color();
            c1 = Color.FromRgb(222, 222, 222);
            c2 = Color.FromRgb(243, 243, 243);
            var aux = true;
            foreach (var item in Tables)
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

        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is TableModel itemMenu)
            {
                NavigationParameters param = new NavigationParameters { { "IdMesa", itemMenu.Id } };
                await NavigationService.NavigateAsync("Comanda", param);
            }
        }
        #endregion


    }
}
