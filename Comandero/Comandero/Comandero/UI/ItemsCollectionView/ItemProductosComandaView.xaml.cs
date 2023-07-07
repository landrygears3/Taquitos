using Comandero.Models.Catalogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.UI.ItemsCollectionView
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ItemProductosComandaView : Grid
	{

        public ICommand MasCommand
        {
            get => (ICommand)GetValue(MasCommandProperty);
            set => SetValue(MasCommandProperty, value);
        }

        public static BindableProperty MasCommandProperty =
            BindableProperty.Create(nameof(MasCommand), typeof(ICommand), typeof(ItemTableCollectionView), null);

        public ICommand MenosCommand
        {
            get => (ICommand)GetValue(MenosCommandProperty);
            set => SetValue(MenosCommandProperty, value);
        }

        public static BindableProperty MenosCommandProperty =
            BindableProperty.Create(nameof(MenosCommand), typeof(ICommand), typeof(ItemTableCollectionView), null);
        public ItemProductosComandaView ()
		{
			InitializeComponent ();
		}

        private void Mas(object sender, EventArgs e)
        {
            if (BindingContext is PlatoModel item)
            {
               MasCommand?.Execute(item);
            }
        }

        private void Menos(object sender, EventArgs e)
        {
            if (BindingContext is PlatoModel item)
            {
                MenosCommand?.Execute(item);
            }
        }
    }
}