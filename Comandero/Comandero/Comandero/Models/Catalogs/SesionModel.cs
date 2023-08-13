using Comandero.Views.Sesion;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Comandero.Models.Catalogs
{
    public class SesionModel
    {
        public static bool status = true;

        public static int sucursal = 1;

        public static string NombreUser = "";

        #region dev
        public static string Host = "http://74.208.61.201:80/TacosAsadaApp";
        #endregion

        #region prod
        //public static string Host = "http://74.208.61.201:81/TacosAsadaApp";
        #endregion



        public static bool typeUser = true;

    }
}
