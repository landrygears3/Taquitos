using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using Newtonsoft.Json;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Comandero.ViewModels.Home
{
    internal class HomeViewModel : ViewModelBase
    {
        public AsyncCommand MenuCommand { get; set; }
        public AsyncCommand KitchenCommand { get; set; }
        //public AsyncCommand CorteCommand { get; set; }
        private HttpClient httpClient;
        public HomeViewModel(INavigationService navigationService) : base(navigationService)
        {
           Title = "Home";
            MenuCommand = new AsyncCommand(MenuCommandExecute);
            KitchenCommand = new AsyncCommand(KitchenCommandExecute);
            //CorteCommand = new AsyncCommand(CorteCommandExecute);
        }
        private async Task MenuCommandExecute()
        {
             await SesionModel.validaCredenciales();

            if (SesionModel.status)
            {
                await NavigationService.NavigateAsync("Customers");
            }
            else
            {
                await NavigationService.GoBackAsync();
            }
                
        }

        private async Task KitchenCommandExecute()
        {
            await SesionModel.validaCredenciales();

            if (SesionModel.status)
            {
                //Customers
                await NavigationService.NavigateAsync("Cocina");
            }
            else
            {
                await NavigationService.GoBackAsync();
            }
        }

        //private async Task CorteCommandExecute()
        //{
        //    await NavigationService.NavigateAsync("TabbedCorte");
        //}


    }
}
