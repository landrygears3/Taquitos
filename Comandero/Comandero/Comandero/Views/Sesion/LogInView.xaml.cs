

using Comandero.ViewModels.Sesion;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.Views.Sesion
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LogInView : ContentPage
    {
        public LogInView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            this.BindingContext = ((LogInViewModel)BindingContext);
        }
    }
}