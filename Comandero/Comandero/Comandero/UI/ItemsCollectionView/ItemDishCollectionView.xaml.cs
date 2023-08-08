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
	public partial class ItemDishCollectionView : SwipeView
    {
        public ICommand SelectedItemCommand
        {
            get => (ICommand)GetValue(SelectedCommandProperty);
            set => SetValue(SelectedCommandProperty, value);
        }

        public static BindableProperty SelectedCommandProperty =
            BindableProperty.Create(nameof(SelectedItemCommand), typeof(ICommand), typeof(ItemTableCollectionView), null);       
        
        public ICommand SelectedEliminaMesa
        {
            get => (ICommand)GetValue(SelectedEliminaMesaProperty);
            set => SetValue(SelectedEliminaMesaProperty, value);
        }

        public static BindableProperty SelectedEliminaMesaProperty =
            BindableProperty.Create(nameof(SelectedEliminaMesa), typeof(ICommand), typeof(ItemTableCollectionView), null);

        public ItemDishCollectionView ()
		{
			InitializeComponent ();
		}

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            if (BindingContext is PlatoModel item)
            {
                SelectedItemCommand?.Execute(item);
            }
        }
    }
}