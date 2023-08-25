using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Catalogs
{
    internal class LoginModel
    {
        public int Id { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string Nombre { get; set; }
        public string contrasena { get; set; }
        public int Sucursal { get; set; }
        public int Tipo { get; set; }
    }
}
