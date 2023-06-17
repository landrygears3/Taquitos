using Comandero.Models.Catalogs;
using Comandero.UI.IconsApp;
using Comandero.UI.Renderers;
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
    public partial class ItemMenuCollectionView : ContentView
    {

        public Icons TypeIcon
        {
            get { return (Icons)GetValue(TypeIconProperty); }
            set { SetValue(TypeIconProperty, value); }
        }

        public string Icon
        {
            get { return (string)GetValue(IconProperty); }
            set { SetValue(IconProperty, value); }
        }

        public ICommand SelectedCommand
        {
            get => (ICommand)GetValue(SelectedCommandProperty);
            set => SetValue(SelectedCommandProperty, value);
        }

        public static BindableProperty SelectedCommandProperty =
    BindableProperty.Create(nameof(SelectedCommand), typeof(ICommand), typeof(ItemMenuCollectionView), null);
        public ItemMenuCollectionView()
        {
            InitializeComponent();
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            if (BindingContext is ItemMenuModel item)
            {
                SelectedCommand?.Execute(item);
            }
        }


        /// <summary>
        /// Property definition for the <see cref="Fonts"/> Property
        /// </summary>
        public static readonly BindableProperty TypeIconProperty =
        BindableProperty.Create(propertyName: nameof(TypeIcon),
              returnType: typeof(Icons),
              declaringType: typeof(IconAwesomeButtonBase),
              defaultValue: Icons.Solid);

        /// <summary>
        /// Property definition for the <see cref="Icon"/> Property
        /// </summary>
        public static readonly BindableProperty IconProperty =
        BindableProperty.Create(propertyName: nameof(Icon),
              returnType: typeof(string),
              declaringType: typeof(IconAwesomeButtonBase),
              defaultValue: string.Empty);
    
}
}