using Comandero.Models.Catalogs;
using Comandero.ViewModels;
using Comandero.ViewModels.Cobro;
using Comandero.ViewModels.Cocina;
using Comandero.ViewModels.Corte;
using Comandero.ViewModels.Home;
using Comandero.ViewModels.Menu;
using Comandero.ViewModels.Sesion;
using Comandero.Views;
using Comandero.Views.Cobro;
using Comandero.Views.Cocina;
using Comandero.Views.Corte;
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
            await NavigationService.NavigateAsync("LogIn");
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
            containerRegistry.RegisterForNavigation<PlatosView, PlatosViewModel>("Plato");
            containerRegistry.RegisterForNavigation<ComandaView, ComandaViewModel>("Comandero");
            containerRegistry.RegisterForNavigation<TipoMenuView, TipoMenuViewModel>("TipoMenu");
            containerRegistry.RegisterForNavigation<VariosSaboresView, VariosSaboresViewModel>("Sabores");
            #endregion

            #region Cobro
            containerRegistry.RegisterForNavigation<CobroView, CobroViewModel>("Cobro");
            #endregion

            #region cocina
            containerRegistry.RegisterForNavigation<CocinaView, CocinaViewModel>("Cocina");
            #endregion

            #region corte
            containerRegistry.RegisterForNavigation<TabbedCorteView>("TabbedCorte");
            containerRegistry.RegisterForNavigation<DiarioView, DiarioViewModel>("CorteDiario");
            containerRegistry.RegisterForNavigation<MensualView, MensualViewModel>("CorteSemanal");
            containerRegistry.RegisterForNavigation<SemanalView, MensualViewModel>("CorteMensual");
            #endregion
        }
    }
}
