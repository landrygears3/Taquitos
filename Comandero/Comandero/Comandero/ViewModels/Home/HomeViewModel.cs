﻿using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Comandero.ViewModels.Home
{
    internal class HomeViewModel : ViewModelBase
    {
        public AsyncCommand MenuCommand { get; set; }
        public HomeViewModel(INavigationService navigationService) : base(navigationService)
        {
           Title = "Home";
            MenuCommand = new AsyncCommand(MenuCommandExecute);
        }
        private async Task MenuCommandExecute()
        {
            //Customers
            await NavigationService.NavigateAsync("Customers");
        }


    }
}
