using Comandero.Models.Catalogs;
using Comandero.ViewModels;
using Comandero.ViewModels.Home;
using Comandero.ViewModels.Menu;
using Comandero.ViewModels.Sesion;
using Comandero.Views;
using Comandero.Views.Menu;
using Comandero.Views.Sesion;
using Prism;
using Prism.Ioc;
using System;
using System.Threading.Tasks;
using Xamarin.Essentials.Implementation;
using Xamarin.Essentials.Interfaces;
using Xamarin.Forms;

namespace Comandero
{
    public partial class App
    {
        public App(IPlatformInitializer initializer)
            : base(initializer)
        {
        }

        protected override async void OnInitialized()
        {
            InitializeComponent();

            await NavigationService.NavigateAsync("Navigation/LogIn");
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterSingleton<IAppInfo, AppInfoImplementation>();
            containerRegistry.RegisterForNavigation<NavigationPage>("Navigation");


            #region Sesion
            containerRegistry.RegisterForNavigation<LogInView, LogInViewModel>("LogIn");
            containerRegistry.RegisterForNavigation<HomeView, HomeViewModel>("Home");
            #endregion

            #region customers
            containerRegistry.RegisterForNavigation<CustomersView, CustomersViewModel>("Customers");
            containerRegistry.RegisterForNavigation<DishesView, DishesViewModel>("Comanda");
            #endregion
        }
    }
}
