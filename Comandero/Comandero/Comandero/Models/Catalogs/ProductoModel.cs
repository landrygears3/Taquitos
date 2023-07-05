using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Catalogs
{
    public class ProductoModel
    {
        public int Id { get; set; }
        public int IdTipoProducto { get; set; }
        public int IdSabor { get; set; }
        public decimal costo { get ; set; }


    }
}
