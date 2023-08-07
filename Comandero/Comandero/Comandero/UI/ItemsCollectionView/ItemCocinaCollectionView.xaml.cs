
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.UI.ItemsCollectionView
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ItemCocinaCollectionView : SwipeView
    {
        public ICommand SelectedItemCommand
        {
            get => (ICommand)GetValue(SelectedCommandProperty);
            set => SetValue(SelectedCommandProperty, value);
        }

        public static BindableProperty SelectedCommandProperty =
            BindableProperty.Create(nameof(SelectedItemCommand), typeof(ICommand), typeof(ItemCocinaCollectionView), null);
        public ItemCocinaCollectionView()
        {
            InitializeComponent();
        }
    }
}