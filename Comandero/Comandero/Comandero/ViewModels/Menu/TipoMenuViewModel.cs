using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Comandero.Utils.Commands;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Common;
using System.IO;
using System.Net.Http;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using static Xamarin.Essentials.Permissions;

namespace Comandero.ViewModels.Menu
{
    internal class TipoMenuViewModel : ViewModelBase
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
        private HttpClient httpClient;
        private int mesa;
        private int idPlato;
        private string Tipo;
        private int tipoMenu;
        public event EventHandler PageAppearing;
        public event EventHandler PageDisappearing;
        public ObservableCollection<TipoMenuItemModel> Platos { get; set; }
        public TipoMenuViewModel(INavigationService navigationService) : base(navigationService)
        {
            Platos = new ObservableCollection<TipoMenuItemModel>();
            Title = "TipoMenu";


        }

        #endregion

        #region get
        private void llenaMenu()
        {
            IsLoading = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                //timer.Stop();
                try
                {
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/ItemTipoProductos";
                    HttpResponseMessage response = await httpClient.GetAsync(query);
                    Platos.Clear();
                    if (response.IsSuccessStatusCode)
                    {
                        decimal auxtotal = 0;
                        string json = await response.Content.ReadAsStringAsync();
                        List<TipoMenuItemModel> data = JsonConvert.DeserializeObject<List<TipoMenuItemModel>>(json);
                        foreach (TipoMenuItemModel items in data)
                        {
                            //item.Imagen = "Comandero." + item.Imagen;
                            items.SelectedItemCommand = new Command(async (item) => await NavegaPlatoExecute(items));
                            Platos.Add(items);
                        }

                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    IsLoading = false;
                }
            });
        }

        #endregion

        #region events

        private async Task NavegaPlatoExecute(object item)
        {
            if (item is TipoMenuItemModel itemMenu)
            {
                if(itemMenu.Tipo == "Item")
                {
                    NavigationParameters param = new NavigationParameters { { "IdMesa", mesa }, { "idPlato", idPlato }, { "TipoProducto", itemMenu.Id }, { "Tipo", Tipo } };
                    await NavigationService.NavigateAsync("Comandero", param);
                }
                if (itemMenu.Tipo == "Platillo")
                {

                }
            }


        }

        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
            }

            if (parameters.TryGetValue("idPlato", out int idplato))
            {
                idPlato = idplato;
            }
            if (parameters.TryGetValue("Tipo", out string tipo))
            {
                Tipo = tipo;
            }
            if (parameters.TryGetValue("back", out bool ret))
            {
                if (ret)
                {
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        NavigationParameters param = new NavigationParameters { { "back", true } };
                        await NavigationService.GoBackAsync(param);
                    });
                }
            }
        }

        public virtual void OnPageDisappearing()
        {
            PageDisappearing?.Invoke(this, EventArgs.Empty);
        }
        public virtual void OnPageAppearing()
        {
            llenaMenu();
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }
        #endregion
    }
}
