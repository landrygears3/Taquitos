using Comandero.Views.Sesion;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Comandero.Models.Catalogs
{
    public class SesionModel
    {

        public static List<Negociantes.PlatoModel> ParaLlevar;

        public static bool status = false;

        public static int sucursal = 1;

        public static int tipeUser = 1;

        public static string NombreUser = "";

        #region dev
        public static string Host = "http://74.208.61.201:80/TacosAsadaApp";
        #endregion

        #region prod
        //public static string Host = "http://74.208.61.201:81/TacosAsadaApp";
        #endregion



        public static bool typeUser = true;

        public static async Task validaCredenciales()
        {
            HttpClient httpClient = new HttpClient();
            HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Keys");

            // Verifica si la solicitud fue exitosa
            if (response.IsSuccessStatusCode)
            {
                // Lee la respuesta como una cadena JSON
                string json = await response.Content.ReadAsStringAsync();

                // Deserializa la cadena JSON en un objeto o modelo
                var data = JsonConvert.DeserializeObject<List<KeyModel>>(json);
                if (data.Count > 0)
                {
                    if (data[0].Valor.Equals("True"))
                    {
                        status = true;
                    }
                    else
                    {
                        status = false;
                        await App.Current.MainPage.DisplayAlert("Atención", "Debe pagar la suscripción", "Aceptar");
                    }
                }
                // Utiliza los datos recibidos como desees
                // ...
            }

        }

    }
}
