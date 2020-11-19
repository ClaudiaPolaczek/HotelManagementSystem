using HotelSystem.Model;
using System;
using System.CodeDom;
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
    /// Interaction logic for Rooms.xaml
    /// </summary>
    public partial class Rooms : Page
    {
        DbHotelContext db = new DbHotelContext();
        public Rooms()
        {
            InitializeComponent();
            dgRooms.ItemsSource = db.Rooms.ToList();
        }

        private void EditRoom(object sender, RoutedEventArgs e)
        {
            int Id = (dgRooms.SelectedItem as Room).Id;
            this.NavigationService.Navigate(new EditRoom(Id));
        }

        private void DeleteRoom(object sender, RoutedEventArgs e)
        {
            try
            {
                int Id = (dgRooms.SelectedItem as Room).Id;

                Room deleteRoom = db.Rooms.Find(Id);
                if (deleteRoom == null)
                {
                    ErrorBox.Visibility = Visibility.Visible;
                    ErrorBox.Text = "This room doesn't exist";
                }
                else
                {
                    var deleteReservations = db.Reservations.Where(r => r.Room.Id == Id);
                    foreach (var r in deleteReservations) db.Reservations.Remove(r);
                    db.Rooms.Remove(deleteRoom);
                    db.SaveChanges();
                }
                dgRooms.ItemsSource = db.Rooms.ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show("A handled exception just occurred: " + ex.Message, "Exception Sample", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
