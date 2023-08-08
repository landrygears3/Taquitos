using Comandero.ViewModels.Cocina;
using Comandero.ViewModels.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.Views.Cocina
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CocinaView : ContentPage
    {
        public CocinaView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((CocinaViewModel)BindingContext).OnPageAppearing();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ((CocinaViewModel)BindingContext).OnPageDisappearing();
        }
    }
}