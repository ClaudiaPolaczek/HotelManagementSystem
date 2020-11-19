using HotelSystem.Model;
using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HotelSystem
{
    /// <summary>
    /// Interaction logic for Reservations.xaml
    /// </summary>
    public partial class Reservations : Page
    {
        DbHotelContext db = new DbHotelContext();
        public Reservations()
        {
            InitializeComponent();
            dgReservations.ItemsSource = db.Reservations.ToList();
            //reservations.Sort((x, y) => DateTime.Compare(x.ArrivalDate, y.ArrivalDate));
        }

        private void Edit(object sender, RoutedEventArgs e)
        {
            int Id = (dgReservations.SelectedItem as Reservation).Id;
            Reservation r = db.Reservations.Find(Id);
            if(r.CheckIn != true) this.NavigationService.Navigate(new EditReservation(Id));
            else
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "This reservation can't be edit";
            }
        }

        private void Delete(object sender, RoutedEventArgs e)
        {
            int Id = (dgReservations.SelectedItem as Reservation).Id;
            Reservation deleteReservation = db.Reservations.Find(Id);
            
            if (deleteReservation == null)
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "This reservation doesn't exist";
            }
            else if (deleteReservation.CheckIn == true)
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "This reservation can't be deleted";
            }
            else
            {
                db.Reservations.Remove(deleteReservation);
                db.SaveChanges();
            }
            dgReservations.ItemsSource = db.Reservations.ToList();
        }

        private void Search(object sender, RoutedEventArgs e)
        {
            SearchClientTextBox.Text = "";
            var reservations = db.Reservations.Where(r => r.Room.Number.ToString() == SearchTextBox.Text);
            if (reservations.Any()) dgReservations.ItemsSource = reservations.ToList();
            else dgReservations.ItemsSource = null;
        }

        private void SearchClient(object sender, RoutedEventArgs e)
        {
            SearchTextBox.Text = "";
            var reservations = db.Reservations.Where(r => r.Client.Surname.ToString() == SearchClientTextBox.Text);
            if (reservations.Any()) dgReservations.ItemsSource = reservations.ToList();
            else dgReservations.ItemsSource = null;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new NewReservation());
        }

        private void CheckInButton_Click_1(object sender, RoutedEventArgs e)
        {
            int Id = (dgReservations.SelectedItem as Reservation).Id;
            Reservation reservation = db.Reservations.Find(Id);
            reservation.CheckIn = true;
            db.SaveChanges();
            this.NavigationService.Navigate(new Reservations());
        }

        private void CheckOutButton_Click_1(object sender, RoutedEventArgs e)
        {
            int Id = (dgReservations.SelectedItem as Reservation).Id;
            Reservation reservation = db.Reservations.Find(Id);
            if (reservation.CheckIn == true)
            {
                reservation.CheckOut = true;
                db.SaveChanges();
                this.NavigationService.Navigate(new Reservations());
            }
            else
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "This reservation is before Check In";
            }
        }
    }
}
