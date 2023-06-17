using Comandero.Models.Catalogs;
using Comandero.Testing;
using Comandero.Utils.Commands;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.Design;
using System.Text;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class CustomersViewModel : ViewModelBase
    {
        public AsyncCommand TableCommand { get; set; }
        public AsyncCommand QuickCommand { get; set; }

        public ObservableCollection<TableModel> Tables { get; set; }

        TestClass test;

        public CustomersViewModel(INavigationService navigationService) : base(navigationService)
        {
            Title = "Customers";
            Tables = new ObservableCollection<TableModel>();
            Testing();
        }
        private void Testing()
        {
            test = new TestClass();
            Color c1 = new Color();
            Color c2 = new Color();
            c1 = Color.FromRgb(222, 222, 222);
            c2 = Color.FromRgb(243, 243, 243);
            var aux = true;
            foreach (var item in test.tablesTest)
            {
                if (aux)
                {
                    item.BgColor = c1;
                }
                else
                {
                    item.BgColor = c2;
                }
                aux = !aux;
                Tables.Add(item);
            }
        }
    }
}
