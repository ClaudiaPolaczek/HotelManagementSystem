﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace HotelSystem
{
    /// <summary>
    /// Interaction logic for HotelOwner.xaml
    /// </summary>
    public partial class HotelOwner : Window
    {
        public HotelOwner(string name)
        {
            InitializeComponent();
            NameSurname.Text = name;
        }

        private void ButtonPopUpLogout_Click(object sender, RoutedEventArgs e)
        {
            LoginPage loginPage = new LoginPage();
            loginPage.Show();
            this.Close();
        }

        private void ItemRoom_Selected(object sender, RoutedEventArgs e)
        {
            Main.Content = new Rooms();
        }

        private void ItemNewRoom_Selected(object sender, RoutedEventArgs e)
        {
             Main.Content = new NewRoom();
        }

        private void ItemEmployees_Selected(object sender, RoutedEventArgs e)
        {
            Main.Content = new Employees();
        }

        private void ItemNewReservation_Selected(object sender, RoutedEventArgs e)
        {
            Main.Content = new NewReservation();
        }

        private void ItemReservations_Selected(object sender, RoutedEventArgs e)
        {
            Main.Content = new Reservations();
        }
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed) DragMove();
        }
    }
}
