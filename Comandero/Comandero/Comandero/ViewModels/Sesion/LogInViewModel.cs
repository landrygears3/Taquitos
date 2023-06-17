using Comandero.Models.Catalogs;
using Comandero.Utils.Commands;
using Prism.Navigation;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Comandero.ViewModels.Sesion
{
    internal class LogInViewModel : ViewModelBase
    {

        public AsyncCommand LogInCommand { get; set; }
       
        public LogInViewModel(INavigationService navigationService) : base(navigationService)
        {
            LogInCommand = new AsyncCommand(LogInCommandExecute);
        }


        private async Task LogInCommandExecute()
        {
            await NavigationService.NavigateAsync("Home");            

        }


    }
}
