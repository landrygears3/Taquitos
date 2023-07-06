using Comandero.ViewModels;
using Comandero.ViewModels.Menu;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.Views.Menu
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class DishesView : ContentPage
    {
        public DishesView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((DishesViewModel)BindingContext).OnPageAppearing();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ((DishesViewModel)BindingContext).OnPageDisappearing();
        }
    }
}