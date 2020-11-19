using HotelSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for NewRoom.xaml
    /// </summary>
    public partial class NewRoom : Page
    {
        DbHotelContext db = new DbHotelContext();
        public NewRoom()
        {
            InitializeComponent();
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            if(Validations.OnlyNumbers(e.Text) || ((TextBox)sender).Text.Length == 3)
                e.Handled = true;
            else
                e.Handled = false;
        }
        private void DoubleNumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            if (Validations.OnlyDouble(e.Text) && !(e.Text == "." && ((TextBox)sender).Text.Contains(e.Text)))
                e.Handled = false;
            else
                e.Handled = true;
        }

        private void NewRoomButton(object sender, RoutedEventArgs e)
        {
            Room room = new Room();

            if (NumberTextBox.Text.Length != 0 && PriceTextBox.Text.Length != 0)
            {
                room.Number = Int32.Parse(NumberTextBox.Text);
                room.Floor = Int32.Parse(FloorTextBox.Text);
                room.Price = Double.Parse(PriceTextBox.Text);
                room.Capacity = Int32.Parse(CapacityTextBox.Text);
                if (SuiteBox.Text == "Yes") room.Suite = true;
                else room.Suite = false;
                db.Rooms.Add(room);
                db.SaveChanges();
                this.NavigationService.Navigate(new Rooms());

            }
            else 
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "Number or price box is empty";
            }
        }
    }
}
