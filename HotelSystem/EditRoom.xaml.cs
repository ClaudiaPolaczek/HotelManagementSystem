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
    /// Interaction logic for EditRoom.xaml
    /// </summary>
    public partial class EditRoom : Page
    {
        DbHotelContext db = new DbHotelContext();
        int _Id;
        public EditRoom(int roomId)
        {
            InitializeComponent();
            _Id = roomId;
            LoadData();
        }

        public void LoadData()
        {
            Room room = db.Rooms.Find(_Id);

            NumberTextBox.Text = room.Number.ToString();
            CapacityTextBox.Text = room.Capacity.ToString();
            FloorTextBox.Text = room.Floor.ToString();
            PriceTextBox.Text = room.Price.ToString();

            if (room.Suite == true) SuiteBox.Text = "Yes";
            else SuiteBox.Text = "No";
        }

        private void EditRoomButton(object sender, RoutedEventArgs e)
        {
            Room updateRoom = (from r in db.Rooms
                              where r.Id == _Id
                              select r).Single();

            if (NumberTextBox.Text.Length != 0 && PriceTextBox.Text.Length != 0)
            {
                updateRoom.Number = Int32.Parse(NumberTextBox.Text);
                updateRoom.Floor = Int32.Parse(FloorTextBox.Text);
                updateRoom.Price = Double.Parse(PriceTextBox.Text);
                updateRoom.Capacity = Int32.Parse(CapacityTextBox.Text);

                if (SuiteBox.Text == "Yes") updateRoom.Suite = true;
                else updateRoom.Suite = false;

                db.SaveChanges();
                this.NavigationService.Navigate(new Rooms());
            }
            else
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "Number or price box is empty";
            }
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            if (Validations.OnlyNumbers(e.Text) || ((TextBox)sender).Text.Length == 3)
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
    }
}
