using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Negociantes
{
    public class MesaModel
    {
        public long Id { get; set; }
        public decimal Current { get; set; }
        public int CurrentCommand { get; set; }
        public int Sucursal { get; set; }

        public string Icon { get; set; } = "Food";
        public string Name { get; set; }

    }
}
