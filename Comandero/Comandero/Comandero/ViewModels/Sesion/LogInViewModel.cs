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

namespace Comandero.ViewModels.Sesion
{
    internal class LogInViewModel : ViewModelBase
    {
        private HttpClient httpClient;
        public AsyncCommand LogInCommand { get; set; }
       
        public LogInViewModel(INavigationService navigationService) : base(navigationService)
        {
            httpClient = new HttpClient();
            LogInCommand = new AsyncCommand(LogInCommandExecute);
        }


        private async Task LogInCommandExecute()
        {
            try
            {
                    await NavigationService.NavigateAsync("Home");
                
            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }
                        

        }


    }
}
