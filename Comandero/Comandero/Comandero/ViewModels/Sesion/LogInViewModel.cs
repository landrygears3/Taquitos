using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using DryIoc;
using Newtonsoft.Json;
using Prism.Navigation;
using System.Collections.Generic;
using System.Net.Http;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using static Xamarin.Essentials.Permissions;
using Xamarin.Forms;
using System.Threading;
using Comandero.Services.Printers;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific;

namespace Comandero.ViewModels.Sesion
{
    internal class LogInViewModel : ViewModelBase
    {
        #region modal
        private bool _isLoading;

        public bool IsLoading
        {
            get { return _isLoading; }
            set { SetProperty(ref _isLoading, value); }
        }        
        private bool _boton;

        public bool Boton
        {
            get { return _boton; }
            set { SetProperty(ref _boton, value); }
        }

        private string _usr;

        public string User
        {
            get { return _usr; }
            set { SetProperty(ref _usr, value); }
        }

        private string _Pass;

        public string Pass
        {
            get { return _Pass; }
            set { SetProperty(ref _Pass, value); }
        }

        #endregion

        private HttpClient httpClient;
        public AsyncCommand LogInCommand { get; set; }


        public LogInViewModel(INavigationService navigationService) : base(navigationService)
        {
            httpClient = new HttpClient();
            Boton = true;
            User =string.Empty;
            Pass =string.Empty;
            IsLoading = false;
            LogInCommand = new AsyncCommand(LogInCommandExecute);
        }


        private async Task LogInCommandExecute()
        {
            try
            {
                Boton = false;
                IsLoading = true;
                await SesionModel.validaCredenciales();

                if (SesionModel.status)
                {
                    if (User.Trim() != string.Empty && Pass.Trim() != string.Empty)
                    {
                        if (await iniciaSesion())
                        {
                            await NavigationService.NavigateAsync("Navigation/Home");
                        }
                        else
                        {
                            await App.Current.MainPage.DisplayAlert("Atención", "Usuario o contraseña incorrectos", "No");
                        }
                    }
                    else
                    {
                        await App.Current.MainPage.DisplayAlert("Atención", "El campo usuario o contraseña no pueden estar vacios", "No");
                    }
                   

                }


            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }
            finally
            {
                Boton = true;
                IsLoading = false;
            }
        }

        private async Task<bool> iniciaSesion()
        {
            bool iniciado = false;
                try
                {

                    // Realiza una solicitud GET al servicio web
                    httpClient = new HttpClient();
                    string query = SesionModel.Host + "/Sesion?usr=" + User + "&pass=" + Pass;
                    HttpResponseMessage response = await httpClient.GetAsync(query);

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        List<LoginModel> data = JsonConvert.DeserializeObject<List<LoginModel>>(json);
                        if (data.Count > 0)
                        {
                            SesionModel.sucursal = data[0].Sucursal;
                            SesionModel.tipeUser = data[0].Tipo;
                            iniciado = true;
                        }

                    }

                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {

                }

            return iniciado;
        }

    }
}
