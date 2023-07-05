using Comandero.Models.Catalogs;
using Comandero.ViewModels.Menu;
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
    public partial class CustomersView : ContentPage
    {
        public CustomersView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            NewTableButton.IsVisible = SesionModel.typeUser;
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((CustomersViewModel)BindingContext).OnPageAppearing();
        }        
        
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ((CustomersViewModel)BindingContext).OnPageDisappearing();
        }
    }
}