using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Negociantes
{
    internal class PlatoModel
    {
        public int Id { get; set; }
        public int IdMesa { get; set; }
        public int idProducto { get; set; }
        public int Cantidad { get; set; }
        public string Estatus { get; set; }
    }
}
