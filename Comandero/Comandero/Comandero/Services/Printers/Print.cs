using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Comandero.Services.Printers
{
    internal class Print
    {
        public string impresion = "";
        public void GetDeviceList()
        {
            IPrintService service = DependencyService.Get<IPrintService>();
            var getDeviceList = service.GetDeviceList();

            if (getDeviceList == null)
                return;

            if (getDeviceList.Count == 0)
            {
                App.Current.MainPage.DisplayAlert("Alert", "No Bluetooth Device found", "Ok");
            }
            else
            {

                foreach (var device in getDeviceList)
                {
                    if (device == "T58")
                    {
                        impresion = device;
                    }
                }
            }
        }

        public async void Imprime(string TXT)
        {
            IPrintService service = DependencyService.Get<IPrintService>();
            service.Print(impresion, TXT,await GetImageBytesFromUrl("https://i.imgur.com/WzuccQ5.png"));
        }
        public async Task<byte[]> GetImageBytesFromUrl(string imageUrl)
        {
            try
            {
                using (var httpClient = new HttpClient())
                {
                    var response = await httpClient.GetAsync(imageUrl);
                    if (response.IsSuccessStatusCode)
                    {
                        var imageStream = await response.Content.ReadAsStreamAsync();
                        using (var memoryStream = new MemoryStream())
                        {
                            await imageStream.CopyToAsync(memoryStream);
                            return memoryStream.ToArray();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
            }

            return null;
        }


    }
}
