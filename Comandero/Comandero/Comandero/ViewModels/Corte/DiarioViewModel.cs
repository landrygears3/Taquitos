using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Comandero.ViewModels.Corte
{
    internal class DiarioViewModel : ViewModelBase
    {
        #region modal

        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }        
        
        private decimal _TotalGanado;

        public decimal TotalGanado
        {
            get { return _TotalGanado; }
            set { SetProperty(ref _TotalGanado, value); }
        }
        #endregion


        #region inits
        public event EventHandler PageAppearing;
        public event EventHandler Disappearing;
        private HttpClient httpClient;
        public ObservableCollection<CorteActualModel> Platos { get; set; }
        public DiarioViewModel(INavigationService navigationService) : base(navigationService)
        {
            Platos = new ObservableCollection<CorteActualModel>();
            Title = "CorteDiario";
            llenaPlatos();
        }
        #endregion


        #region Methods
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


        #region Get
        private async Task llenaPlatos()
        {
            IsLoading = true;

            try
            {
                IsLoading = true;
                httpClient = new HttpClient();
                decimal auxCurrentTotal = 0;
                // Realiza una solicitud GET al servicio web
                string query = SesionModel.Host + "/CorteActual";
                HttpResponseMessage response = await httpClient.GetAsync(query);

                // Verifica si la solicitud fue exitosa
                if (response.IsSuccessStatusCode)
                {
                    // Lee la respuesta como una cadena JSON
                    string json = await response.Content.ReadAsStringAsync();

                    // Deserializa la cadena JSON en un objeto o modelo
                    var data = JsonConvert.DeserializeObject<List<CorteActualModel>>(json);
                    Platos.Clear();
                    foreach (CorteActualModel items in data)
                    {
                        Platos.Add(items);
                        TotalGanado += items.Total;
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

        }
        #endregion


        #region Events
        #endregion
    }
}
