using Comandero.UI.ItemsCollectionView;
using Comandero.ViewModels.Cobro;
using Comandero.ViewModels.Menu;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.Views.Cobro
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CobroView : ContentPage
    {
        public decimal CurrentTotal
        {
            get => (decimal)GetValue(CurrentTotalProperty);
            set => SetValue(CurrentTotalProperty, value);
        }

        public static BindableProperty CurrentTotalProperty =
            BindableProperty.Create(nameof(CurrentTotal), typeof(decimal), typeof(ItemTableCollectionView), decimal.Zero);
        public CobroView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((CobroViewModel)BindingContext).OnPageAppearing();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ((CobroViewModel)BindingContext).OnPageDisappearing();
        }
    }
}