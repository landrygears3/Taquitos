using Comandero.Models.Catalogs;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace Comandero.Services.Api
{
    internal class Get
    {
        private HttpClient httpClient;
        public Get()
        {
            httpClient = new HttpClient();
        }
        public List<TableModel> data;
        public async Task ConsumeWebService()
        {
            try
            {
                // Realiza una solicitud GET al servicio web
                HttpResponseMessage response = await httpClient.GetAsync("http://www.Coatltest.somee.com/Table?sucursal=1");

                // Verifica si la solicitud fue exitosa
                if (response.IsSuccessStatusCode)
                {
                    // Lee la respuesta como una cadena JSON
                    string json = await response.Content.ReadAsStringAsync();

                    // Deserializa la cadena JSON en un objeto o modelo
                    data = JsonConvert.DeserializeObject<List<TableModel>>(json);

                    // Utiliza los datos recibidos como desees
                    // ...
                }
            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }
        }

    }
}
