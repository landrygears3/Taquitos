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
        public string Descripcion { get; set; }
        public string adicionales { get; set; } = "";
        public int idc { get; set; }
        public Color BgColor { get; set; }
        public int Cantidad { get; set; }
        public bool Combinado { get; set; } 
        public bool Normal { get; set; } 

        public ICommand MasCommand { get; set; }
        public ICommand MenosCommand { get; set; }
        public ICommand CombinadoCommand { get; set; }
    }
}
