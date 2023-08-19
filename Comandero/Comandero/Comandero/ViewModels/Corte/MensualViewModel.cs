using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.ViewModels.Corte
{
    internal class MensualViewModel : ViewModelBase
    {
        #region inits
        public MensualViewModel(INavigationService navigationService) : base(navigationService)
        {
            Title = "CorteMensual";
        }
        #endregion
    }
}
