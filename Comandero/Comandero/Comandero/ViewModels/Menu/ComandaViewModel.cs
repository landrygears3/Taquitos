using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using DryIoc;
using Newtonsoft.Json;
using Prism.Mvvm;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    class ComandaViewModel : ViewModelBase
    {

        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }
        }

        private int mesa;

        public AsyncCommand AgregarDataCommand { get; set; }
        public ObservableCollection<ProductoModel> Productos { get; set; }
        public ICommand MasCommand => new Command(async (item) => await MasCommandExecute(item));
        public ICommand MenosCommand => new Command(async (item) => await MenosCommandExecute(item));
        private HttpClient httpClient;
        public ComandaViewModel(INavigationService navigationService) : base(navigationService)
        {
            AgregarDataCommand = new AsyncCommand(AgregarDataCommandExecute);
            Productos = new ObservableCollection<ProductoModel>();
            Title = "Comandero";
            httpClient = new HttpClient();
            llenaProductos();
        }

        private async Task AgregarDataCommandExecute()
        {

                try
                {
                // Realiza una solicitud GET al servicio web
                List<PlatoPostModel> momdelosubida = new List<PlatoPostModel>();
                foreach (var model in Productos)
                {
                    if (model.Cantidad > 0)
                    {
                        momdelosubida.Add(new PlatoPostModel());
                        momdelosubida.Last().Id = model.Id;
                        momdelosubida.Last().IdMesa = mesa;
                        momdelosubida.Last().idProducto = model.IdTipoProducto;
                        momdelosubida.Last().Cantidad = model.Cantidad;
                        momdelosubida.Last().Estatus = "Enviado";
                    }
                }
                if(momdelosubida.Count() > 0)
                {
                    var jsonData = JsonConvert.SerializeObject(momdelosubida);
                    var content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                    HttpResponseMessage message = await httpClient.PostAsync(SesionModel.Host + "/Platos", content);
                }


                    // Verifica si la solicitud fue exitosa
                   
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }


        }

        private void llenaProductos()
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                try
                {
                    // Realiza una solicitud GET al servicio web
                    HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Producto");

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
                colores();
            });
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
        private async Task MasCommandExecute(object item)
        {
            if (item is ProductoModel itemMenu)
            {
                try
                {
                    itemMenu.Cantidad++;
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
                    int cantidad = itemMenu.Cantidad;
                    if (cantidad > 0)
                    {
                        cantidad--;
                    }
                    itemMenu.Cantidad = cantidad;
                }
                catch
                {

                }
            }
        }
    }
}
