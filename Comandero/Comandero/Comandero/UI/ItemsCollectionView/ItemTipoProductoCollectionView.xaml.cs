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
    public partial class ItemTipoProductoCollectionView : Grid
    {
        public ICommand SelectedItemCommand
        {
            get => (ICommand)GetValue(SelectedCommandProperty);
            set => SetValue(SelectedCommandProperty, value);
        }

        public static BindableProperty SelectedCommandProperty =
            BindableProperty.Create(nameof(SelectedItemCommand), typeof(ICommand), typeof(ItemTableCollectionView), null);
        public ItemTipoProductoCollectionView()
        {
            InitializeComponent();
        }
        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            if (BindingContext is TipoMenuItemModel item)
            {
                SelectedItemCommand?.Execute(item);
            }
        }
    }
}