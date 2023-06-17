using Comandero.UI.IconsApp;
using Comandero.UI.Renderers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Comandero.UI.ItemsCollectionView
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ItemTableCollectionView : Grid
    {
		public ItemTableCollectionView ()
		{
			InitializeComponent ();
		}

    }
}