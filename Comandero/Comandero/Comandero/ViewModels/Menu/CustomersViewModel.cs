﻿using Comandero.Models.Catalogs;
using Comandero.Services.Api;
using Comandero.Utils.Commands;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using Prism.Common;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.Design;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;

namespace Comandero.ViewModels.Menu
{
    internal class CustomersViewModel : ViewModelBase
    {



        #region Windo


        private HttpClient httpClient;
        private HttpClient httpClientNew;

        //private System.Timers.Timer timer;

        public ICommand SelectedItemCommand => new Command(async (item) => await SelectedItemCommandExecute(item));

        public ObservableCollection<TableModel> Tables { get; set; }

        public AsyncCommand NuevaMesaCommand { get; set; }
        private bool inicial = true;

        public CustomersViewModel(INavigationService navigationService) : base(navigationService)
        {
            
            httpClientNew = new HttpClient();
            Title = "Customers";
            Tables = new ObservableCollection<TableModel>();
            
            llenaMesas();
            //timer = new System.Timers.Timer();
            //timer.Interval = 1; // Intervalo de actualización en milisegundos (en este caso, 5 segundos)
            //timer.Elapsed += TimerElapsed;
            NuevaMesaCommand = new AsyncCommand(NuevaMesaCommandExecute);

        }

        private async Task NuevaMesaCommandExecute()
        {
            try
            {
                List<int> list = new List<int> {SesionModel.sucursal };
                var jsonData = JsonConvert.SerializeObject(list);
                var content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                HttpResponseMessage message = await httpClientNew.PostAsync(SesionModel.Host + "/Table", content);
                // Verifica si la solicitud fue exitosa
               
            }
            catch (Exception ex)
            {
                // Maneja cualquier error que pueda ocurrir
            }

        }

        private void TimerElapsed(object sender, ElapsedEventArgs e)
        {
            //timer.Interval = 3000;
            llenaMesas();
        }

        private void llenaMesas()
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                //timer.Stop();
                try
                {
                    // Realiza una solicitud GET al servicio web
                    httpClient = new HttpClient();
                    httpClient.Timeout = TimeSpan.FromMilliseconds(Timeout.Infinite);
                    HttpResponseMessage response = await httpClient.GetAsync(SesionModel.Host + "/Table?sucursal=" + SesionModel.sucursal + "&inicial=" + inicial.ToString());

                    // Verifica si la solicitud fue exitosa
                    if (response.IsSuccessStatusCode)
                    {
                        // Lee la respuesta como una cadena JSON
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserializa la cadena JSON en un objeto o modelo
                        var data = JsonConvert.DeserializeObject<List<TableModel>>(json);
                        Tables.Clear();
                        foreach (var items in data)
                        {
                            items.SelectedItemCommand = new Command(async (item) => await SelectedItemCommandExecute(item));
                            Tables.Add(items);
                        }
                        // Utiliza los datos recibidos como desees
                        // ...
                    }
                }
                catch (Exception ex)
                {
                    // Maneja cualquier error que pueda ocurrir
                }
                finally
                {
                    httpClient.Dispose();
                    inicial = false;
                    llenaMesas();
                }
                colores();
                //timer.Start();
            });
        }

        public event EventHandler PageAppearing;
        public event EventHandler Disappearing;

        public virtual void OnPageAppearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
            //timer.Start();
            //llenaMesas();
        }        
        
        public virtual void OnPageDisappearing()
        {
            PageAppearing?.Invoke(this, EventArgs.Empty);
            //timer.Stop();
        }


        private void colores()
        {
            Color c1 = new Color();
            Color c2 = new Color();
            c1 = Color.FromRgb(222, 222, 222);
            c2 = Color.FromRgb(243, 243, 243);
            var aux = true;
            foreach (var item in Tables)
            {
                if (aux)
                {
                    item.BgColor = c1;
                }
                else
                {
                    item.BgColor = c2;
                }
                aux = !aux;
                
            }
        }

        private async Task SelectedItemCommandExecute(object item)
        {
            if (item is TableModel itemMenu)
            {
                NavigationParameters param = new NavigationParameters{ { "IdMesa", itemMenu.Id } };
                await NavigationService.NavigateAsync("Comanda",param);
            }
        }
        #endregion
    }
}
