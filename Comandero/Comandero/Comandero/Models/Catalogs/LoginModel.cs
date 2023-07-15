using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Catalogs
{
    internal class LoginModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Pass { get; set; }
        public int sucursal { get; set; }
        public bool login { get; set; }
    }
}
