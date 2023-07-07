using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using DryIoc;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    class PlatosViewModel : ViewModelBase
    {
        private int mesa;
        private HttpClient httpClient;
        public ObservableCollection<PlatoModel> Platos { get; set; }


        public AsyncCommand AgregarPlato { get; set; }
        private int plato;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        private System.Timers.Timer timer;
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
        public PlatosViewModel(INavigationService navigationService) : base(navigationService)
        {
            
            Title = "Plato";
            AgregarPlato = new AsyncCommand(AgregarPlatoExecute);
            httpClient = new HttpClient();
            Platos = new ObservableCollection<PlatoModel>();
            timer = new System.Timers.Timer();
            timer.Interval = 10; // Intervalo de actualización en milisegundos (en este caso, 5 segundos)
            timer.Elapsed += TimerElapsed;
        }
        private async Task AgregarPlatoExecute()
        {
            long auxplato = 0;
            if(Platos.Count> 0)
            {
                auxplato = Platos[0].Id;
            }
            NavigationParameters param = new NavigationParameters {{ "IdMesa", mesa },{ "idPlato", auxplato } };
            await NavigationService.NavigateAsync("Comandero",param);

        }
        private void TimerElapsed(object sender, ElapsedEventArgs e)
        {
            timer.Interval = 3000;
            llenaPlatos();
        }





        private void llenaPlatos()
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                timer.Stop();
                try
                {
                    // Realiza una solicitud GET al servicio web
                    HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Platos?sucursal=" + SesionModel.sucursal +"&mesa=" + mesa + "&plato=" + plato);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        decimal auxtotal = 0;
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<PlatoModel>>(json);
                        Platos.Clear();
                        foreach (var items in data)
                        {
                            items.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                            
                            Platos.Add(items);
                            auxtotal += items.subtotal;
                        }
                        CurrentTotal = auxtotal;
                        // Utiliza los datos recibidos como desees
                        // ...
                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                colores();
                timer.Start();
            });
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
        public virtual void OnPageAppearing()
        {
            timer.Start();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }

        public virtual void OnPageDisappearing()
        {
            timer.Stop();
            PageDisappearing?.Invoke(this, EventArgs.Empty);
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
            }
        }

        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is PlatoModel itemMenu)
            {
                if (itemMenu.estatus.Equals("Enviado"))
                {                    
                    //NavigationParameters param = new NavigationParameters { { "IdPlato", itemMenu.Id }, { "IdMesa", mesa } };
                    //await NavigationService.NavigateAsync("Plato", param);
                }

            }
        }
    }
}
