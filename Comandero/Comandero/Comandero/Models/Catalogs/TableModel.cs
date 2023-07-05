using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;

namespace Comandero.Models.Catalogs
{
    public class TableModel
    {
        public long Id { get; set; }
        public decimal Current { get; set; }
        public int CurrentCommand { get; set; }
        public string Icon { get; set; }
        public string Name { get; set; }
        public Color BgColor { get; set; }

    }
}
