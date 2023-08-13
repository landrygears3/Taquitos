using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;

namespace Comandero.Models.Catalogs
{
    public class TipoMenuItemModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }

        public string Imagen { get; set;}
        public string Tipo { get; set;}

        public ICommand SelectedItemCommand { get; set; }
    }
}
