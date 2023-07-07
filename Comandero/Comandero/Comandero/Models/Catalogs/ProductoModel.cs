using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Input;

namespace Comandero.Models.Catalogs
{
    public class ProductoModel
    {
        public int Id { get; set; }
        public int IdTipoProducto { get; set; }
        public int IdSabor { get; set; }
        public decimal Costo { get; set; }
        public string NombreProducto { get; set; }
        public Color BgColor { get; set; }
        public int Cantidad { get; set; }

        public ICommand MasCommand { get; set; }
        public ICommand MenosCommand { get; set; }
    }
}
