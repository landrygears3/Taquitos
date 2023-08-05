using Comandero.Models.Catalogs;
using Comandero.UI.IconsApp;
using Comandero.UI.ItemsCollectionView;
using Comandero.UI.Renderers;
using Comandero.Utils.Commands;
using DryIoc;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class DishesViewModel : ViewModelBase
    {
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
        private bool inicial = true;
        public ObservableCollection<PlatoModel> Platos { get; set; }

        private int mesa = 0;

        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;


        public virtual void OnPageAppearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }        
        
        public virtual void OnPageDisappearing()
        {
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        public DishesViewModel(INavigationService navigationService ) : base(navigationService)
        {
            AgregarNewDataCommand = new AsyncCommand(AgregarNewDataCommandExecute);
            Title = "Comanda";
            httpClient = new HttpClient();
            Platos = new ObservableCollection<PlatoModel>();
            
        }

        private async Task AgregarNewDataCommandExecute()
        {

            NavigationParameters param = new NavigationParameters { { "IdPlato", 0 }, { "IdMesa", mesa } };
            await NavigationService.NavigateAsync("Plato", param);


        }
        private void TimerElapsed(object sender, ElapsedEventArgs e)
        {
            llenaPlatos();
        }
        private void llenaPlatos()
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                try
                {
                    httpClient = new HttpClient();
                    httpClient.Timeout = TimeSpan.FromMilliseconds(Timeout.Infinite);
                    decimal auxCurrentTotal = 0;
                    // Realiza una solicitud GET al servicio web
                    string query = SesionModel.Host + "/Plato?sucursal=" + SesionModel.sucursal + "&mesa=" + mesa + "&inicial=" + inicial.ToString();
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
                    httpClient.Dispose();
                    inicial = false;
                    llenaPlatos();
                }
                colores();
            });
        }
        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
                MyTextProperty = "Mesa " + idMesa;
                llenaPlatos();
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

        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is PlatoModel itemMenu)
            {
                NavigationParameters param = new NavigationParameters { { "IdPlato", itemMenu.Id }, { "IdMesa", mesa } };
                await NavigationService.NavigateAsync("Plato", param);
            }
        }
    }
}
