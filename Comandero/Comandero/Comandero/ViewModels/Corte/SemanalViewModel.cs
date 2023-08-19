using Comandero.Models.Catalogs;
using Comandero.Models.Negociantes;
using Microsoft.AspNetCore.SignalR.Client;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Text;

namespace Comandero.ViewModels.Corte
{
    internal class SemanalViewModel : ViewModelBase
    {
        #region inits
        public SemanalViewModel(INavigationService navigationService) : base(navigationService)
        {
            Title = "CorteSemanal";
        }
        #endregion
    }
}
