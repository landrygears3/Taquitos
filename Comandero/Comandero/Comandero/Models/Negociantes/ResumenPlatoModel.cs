using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Negociantes
{
    internal class ResumenPlatoModel
    {
        public long Id { get; set; }
        public int idComanda { get; set; }
        public int idProducto { get; set; }
        public int cantidad { get; set; }
        public int Sucursal { get; set; }
        public string estatus { get; set; } 
        public string Name { get; set; }
        public string Icon { get; set; } 
        public decimal subtotal { get; set; }
    }
}
