using Comandero.Models.Catalogs;
using ImTools;
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
        
        public ICommand CombinadoCommand
        {
            get => (ICommand)GetValue(CombinadoCommandProperty);
            set => SetValue(CombinadoCommandProperty, value);
        }

        public static BindableProperty CombinadoCommandProperty =
            BindableProperty.Create(nameof(CombinadoCommand), typeof(ICommand), typeof(ItemTableCollectionView), null);

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
            if (BindingContext is ProductoModel item)
            {
                item.Cantidad++;
                Cantidad.Text = item.Cantidad.ToString();
                MasCommand?.Execute(item);

            }
        }

        private void Menos(object sender, EventArgs e)
        {
            if (BindingContext is ProductoModel item)
            {
                int cantidad = item.Cantidad;
                if (cantidad > 0)
                {
                    cantidad--;

                }
                item.Cantidad = cantidad;
                Cantidad.Text = item.Cantidad.ToString();
                MenosCommand?.Execute(item);
            }
        }
    }
}