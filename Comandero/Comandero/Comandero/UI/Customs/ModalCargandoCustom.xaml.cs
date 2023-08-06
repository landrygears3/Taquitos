using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.UI.Customs
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ModalCargandoCustom : ContentView
    {
        public ModalCargandoCustom()
        {
            InitializeComponent();
        }


        public static readonly BindableProperty IsLoadingProperty = BindableProperty.Create(nameof(IsLoading), typeof(bool), typeof(ModalCargandoCustom), default(bool));
        public bool IsLoading
        {
            get => (bool)GetValue(IsLoadingProperty);
            set => SetValue(IsLoadingProperty, value);
        }

        public static readonly BindableProperty LoadingMessageProperty = BindableProperty.Create(nameof(LoadingMessage), typeof(string), typeof(ModalCargandoCustom), string.Empty);
        public string LoadingMessage
        {
            get => (string)GetValue(LoadingMessageProperty);
            set => SetValue(LoadingMessageProperty, value);
        }
    }
}