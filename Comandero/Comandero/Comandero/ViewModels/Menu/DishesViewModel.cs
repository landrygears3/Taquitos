using Comandero.UI.IconsApp;
using Comandero.UI.ItemsCollectionView;
using Comandero.UI.Renderers;
using Comandero.Utils.Commands;
using Newtonsoft.Json.Serialization;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class DishesViewModel : ViewModelBase
    {
      
        private int mesa = 0;

        public string Mesa { get; set; }

        public event EventHandler PageAppearing;


        public virtual void OnPageAppearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
        }
        public DishesViewModel(INavigationService navigationService ) : base(navigationService)
        {
            Title = "Comanda";
            

        }
        public override void OnNavigatedTo(INavigationParameters parameters)
        {
            if (parameters.TryGetValue("IdMesa", out int idMesa))
            {
                mesa = idMesa;
                Mesa = "Mesa " + idMesa;
             }
        }
    }
}
