using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Comandero.Services.Printers
{
    public interface IPrintService
    {
        IList<string> GetDeviceList();
        Task Print(string deviceName, string text, byte[] imageBytes);
    }
}
