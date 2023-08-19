using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.Views.Corte
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TabbedCorteView : TabbedPage
    {
        public TabbedCorteView()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }
    }
}