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
	public partial class ComandaView : ContentPage
	{
		public ComandaView ()
		{
			InitializeComponent ();
            NavigationPage.SetHasNavigationBar(this, false);
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((ComandaViewModel)BindingContext).OnPageAppearing();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ((ComandaViewModel)BindingContext).OnPageDisappearing();
        }
    }
}