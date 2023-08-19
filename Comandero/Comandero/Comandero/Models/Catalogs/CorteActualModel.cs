using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Comandero.Models.Catalogs
{
    internal class CorteActualModel
    {
        public int Id { get; set; }

        public int Comanda { get; set; }

        public int Mesa { get; set; }

        public DateTime FechaComanda { get; set; }

        public int IdProducto { get; set; }

        public int Cantidad { get; set; }

        public string Adicionales { get; set; }

        public string Tipo { get; set; }

        public decimal Total { get; set; }

        public Color BgColor { get; set; }
    }
}
