using PZ3_NetworkService.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PZ3_NetworkService.ViewModel
{
    public class MainViewModel : BindableBase
    {
        public string loger;
        public string logerGraph;
        public int graphCounter=0;
        public MyICommand<string> Navigacija { get; private set; }
        private HomeViewModel homeViewModel = new HomeViewModel();
        private NetworkDataViewModel networkDataViewModel = new NetworkDataViewModel();
        private ReportViewModel reportViewModel = new ReportViewModel();
        private HelpViewModel helpViewModel = new HelpViewModel();
        private NetworkViewViewModel networkViewViewModel = new NetworkViewViewModel();
        private DataChartViewModel dataChartViewModel = new DataChartViewModel();
        private BindableBase trenutniViewModel;
        private TipoviPumpi t1 = new TipoviPumpi();
        private TipoviPumpi t2 = new TipoviPumpi();
        private TipoviPumpi t3 = new TipoviPumpi();
        
        public static ObservableCollection<Pumpa> Pumpe { get; set; }
        public static ObservableCollection<TipoviPumpi> Tipovi { get; set; }
        public static List<double> proveraIDa { get; set;  }



        public MainViewModel()
        {
            Pumpe = new ObservableCollection<Pumpa>();
            Tipovi = new ObservableCollection<TipoviPumpi>();
            t1.NameTip = "Turbo 975";
            t1.ImgSrc = @"C:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\Turbo9755.jpg";
            Tipovi.Add(t1);
            t2.NameTip = "Durmax7";
            t2.ImgSrc = @"C:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\duromax.jpg";
            Tipovi.Add(t2);
            t3.NameTip = "Hidromer";
            t3.ImgSrc = @"C:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\hidromer.jpg";
            Tipovi.Add(t3);

            Navigacija = new MyICommand<string>(Navig);
            TrenutniViewModel = homeViewModel;

            proveraIDa = new List<double>();

            createListener();
        }

        public BindableBase TrenutniViewModel
        {
            get { return trenutniViewModel; }
            set
            {
                SetProperty(ref trenutniViewModel, value);
            }
        }

        public void Navig(string odabir)
        {
            switch (odabir)
            {
                case "Home":
                    TrenutniViewModel = homeViewModel;
                    break;
                case "Network Data":
                    TrenutniViewModel = networkDataViewModel;
                    break;
                case "Report":
                    TrenutniViewModel = reportViewModel;
                    break;
                case "Help":
                    TrenutniViewModel = helpViewModel;
                    break;
                case "Network View":
                    TrenutniViewModel = networkViewViewModel;
                    break;
                case "Data Chart":
                    TrenutniViewModel = dataChartViewModel;
                    break;
            }
        }

        private void createListener()
        {
            var tcp = new TcpListener(IPAddress.Any, 25565);
            tcp.Start();

            var listeningThread = new Thread(() =>
            {
                while (true)
                {
                    var tcpClient = tcp.AcceptTcpClient();
                    ThreadPool.QueueUserWorkItem(param =>
                    {
                        //Prijem poruke
                        NetworkStream stream = tcpClient.GetStream();
                        string incomming;
                        byte[] bytes = new byte[1024];
                        int i = stream.Read(bytes, 0, bytes.Length);
                        //Primljena poruka je sacuvana u incomming stringu
                        incomming = System.Text.Encoding.ASCII.GetString(bytes, 0, i);

                        //Ukoliko je primljena poruka pitanje koliko objekata ima u sistemu -> odgovor
                        if (incomming.Equals("Need object count"))
                        {
                            //Response
                            /* Umesto sto se ovde salje count.ToString(), potrebno je poslati 
                             * duzinu liste koja sadrzi sve objekte pod monitoringom, odnosno
                             * njihov ukupan broj (NE BROJATI OD NULE, VEC POSLATI UKUPAN BROJ)
                             * */
                            Byte[] data = System.Text.Encoding.ASCII.GetBytes(Pumpe.Count().ToString());//
                            stream.Write(data, 0, data.Length);
                        }
                        else
                        {
                            //U suprotnom, server je poslao promenu stanja nekog objekta u sistemu
                            Console.WriteLine(incomming); //Na primer: "Objekat_1:272"

                            //################ IMPLEMENTACIJA ####################
                            // Obraditi poruku kako bi se dobile informacije o izmeni
                            // Azuriranje potrebnih stvari u aplikaciji
                            loger = @"C:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\bin\Debug\Log.txt";
                            logerGraph = @"C:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\bin\Debug\LogGraph.txt";
                            int pom = Int32.Parse(incomming.Split('_', ':')[1]);
                            Pumpe[pom].Value = double.Parse(incomming.Split('_', ':')[2]);

                            using (StreamWriter sw = new StreamWriter(loger, true))
                            {
                                sw.WriteLine("Object " + Pumpe[pom].id + "\tValue: " + Pumpe[pom].Value + "\tTime: " + DateTime.Now.ToString());
                            }

                            //if (graphCounter < 10)
                            //{
                            //    using (StreamWriter sw = new StreamWriter(logerGraph, true))
                            //    {
                            //        sw.WriteLine(Pumpe[pom].Value + " " + DateTime.Now.ToString());
                            //    }
                            //    graphCounter++;
                            //}
                            //else
                            //{
                            //    using (StreamWriter sw = new StreamWriter(logerGraph, false))
                            //    {
                            //        sw.WriteLine(Pumpe[pom].Value + " " + DateTime.Now.ToString());
                            //    }
                            //    graphCounter--;
                            //}

                        }
                    }, null);
                }
            });

            listeningThread.IsBackground = true;
            listeningThread.Start();
        }

        
    }
}
