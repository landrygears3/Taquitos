using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Input;

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

        public ICommand SelectedItemCommand { get; set; }

    }
}
