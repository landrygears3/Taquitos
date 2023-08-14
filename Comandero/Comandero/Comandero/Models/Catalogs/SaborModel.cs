using System;
using System.Collections.Generic;

using System.Text;
using Xamarin.Forms;

namespace Comandero.Models.Catalogs
{
    class SaborModel
    {
        public int Id { get; set; }
        public string NombreSabor { get; set; }
        public string Descripcion { get; set; }

        public Color BgColor { get; set; }
        public bool Check { get; set; }
    }
}
