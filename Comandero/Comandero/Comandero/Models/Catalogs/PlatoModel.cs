using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Input;

namespace Comandero.Models.Catalogs
{
    class PlatoModel
    {
        public long Id { get; set; }
        public int idComanda { get; set; }
        public int Mesa { get; set; }
        public string NombreMesa { get; set; }
        public int idProducto { get; set; }
        public int cantidad { get; set; }
        public string estatus { get; set; }
        public string Icon { get; set; } = "user";
        public decimal subtotal { get; set; }
        public string Nombre { get; set; }
        public string NombrePlato { get; set; }
        public int idc { get; set; }
        public Color BgColor { get; set; }

        public bool esVisible { get; set; }

        public string Name { get; set; }
        public ICommand SelectedItemCommand { get; set; }
        public ICommand SelectedEliminaMesa { get; set; }
    }
}
