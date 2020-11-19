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
    /// Interaction logic for EditReservation.xaml
    /// </summary>
    public partial class EditReservation : Page
    {
        DbHotelContext db = new DbHotelContext();
        int Id;
        int RoomId;
        public EditReservation(int reservationId)
        {
            InitializeComponent();
            Id = reservationId;
            LoadData();
            Title_3.Visibility = Visibility.Collapsed;
            Reservation_3.Visibility = Visibility.Collapsed;
        }

        public void LoadData()
        {
            Reservation reservation = db.Reservations.Find(Id);
            NumberOfPeople.Text = reservation.Room.Capacity.ToString();
            ArrivalDatePicker.SelectedDate = reservation.ArrivalDate;
            DepartureDatePicker.SelectedDate = reservation.DepartureDate;
            dgRooms.ItemsSource = db.Rooms.Where(r => r.Id == reservation.Room.Id).ToList();

            Client client = reservation.Client;
            NameTextBox.Text = client.Name;
            SurnameTextBox.Text = client.Surname;
            PhoneTextBox.Text = client.PhoneNumber;
            EmailTextBox.Text = client.Email;
            BirthdayBox.SelectedDate = client.Birthday;
        }

        private void NextButton(object sender, RoutedEventArgs e)
        {
            Title_2.Visibility = Visibility.Visible;
            Reservation_2.Visibility = Visibility.Visible;
            Error.Visibility = Visibility.Hidden;
            var rooms = db.Rooms.Where(r => r.Capacity >= (NumberOfPeople.SelectedIndex + 1));
            var availableRooms = rooms.Where(m => m.Reservation.All(r => r.DepartureDate <= ArrivalDatePicker.DisplayDate || r.ArrivalDate >= DepartureDatePicker.DisplayDate));

            if (availableRooms.Any())
            {
                dgRooms.ItemsSource = availableRooms.ToList();
            }
            else
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "There's no free room";
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Title_1.Visibility = Visibility.Collapsed;
            Title_2.Visibility = Visibility.Collapsed;
            Reservation_2.Visibility = Visibility.Collapsed;
            Reservation_1.Visibility = Visibility.Collapsed;
            Title_3.Visibility = Visibility.Visible;
            Reservation_3.Visibility = Visibility.Visible;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Title_1.Visibility = Visibility.Visible;
            Title_2.Visibility = Visibility.Visible;
            Reservation_2.Visibility = Visibility.Visible;
            Reservation_1.Visibility = Visibility.Visible;
            Title_3.Visibility = Visibility.Collapsed;
            Reservation_3.Visibility = Visibility.Collapsed;
        }

        private void ArrivalDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            DateTime arrival = ArrivalDatePicker.SelectedDate.Value.AddDays(1);
            DepartureDatePicker.DisplayDateStart = arrival;
        }

        private void SavePersonal(object sender, RoutedEventArgs e)
        {            
            Error.Visibility = Visibility.Hidden;

            if (BirthdayBox.SelectedDate == null)
                BirthdayBox.SelectedDate = DateTime.Now;

            if (CheckPhone(PhoneTextBox.Text) && CheckSurname(SurnameTextBox.Text) && CheckName(NameTextBox.Text) 
                && CheckEmail(EmailTextBox.Text) && CheckBirthday(BirthdayBox.SelectedDate ?? DateTime.Now))
            {
                Client client = db.Reservations.Find(Id).Client;

                client.Name = NameTextBox.Text;
                client.Surname = SurnameTextBox.Text;
                client.PhoneNumber = PhoneTextBox.Text;
                client.Birthday = BirthdayBox.SelectedDate ?? DateTime.Now;
                db.SaveChanges();
                this.NavigationService.Navigate(new Reservations());
            }
        }

        private void SelectRoom(object sender, RoutedEventArgs e)
        {
            RoomId = (dgRooms.SelectedItem as Room).Id;
            SaveButton.Visibility = Visibility.Visible;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            Room room = db.Rooms.Find(RoomId);
            
            Reservation reservation = db.Reservations.Find(Id);
            reservation.Room = room;
            reservation.ArrivalDate = ArrivalDatePicker.SelectedDate ?? DateTime.Now;
            reservation.DepartureDate = DepartureDatePicker.SelectedDate ?? DateTime.Now;
            reservation.Price = (reservation.DepartureDate - reservation.ArrivalDate).TotalDays * room.Price;
            
            db.SaveChanges();
            this.NavigationService.Navigate(new Reservations());
        }

        private bool CheckPhone(string phone)
        {
            if (phone.Length != 9)
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Phone Number must have 9 numbers";
                return false;
            }
            else return true;
        }

        private bool CheckName(string name)
        {
            if (name.Length < 3)
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Name must be longer than 3 charakters";
                return false;
            }
            else return true;
        }

        private bool CheckSurname(string surname)
        {
            if (surname.Length < 3)
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Surname must be longer than 3 charakters";
                return false;
            }
            else return true;
        }

        private bool CheckEmail(string email)
        {
            if (!Validations.Email(email))
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Not a valid email address";
                return false;
            }
            else return true;
        }

        private bool CheckBirthday(DateTime birthday)
        {
            if (birthday.Year > (DateTime.Now.Year - 18))
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "You must be 18 to make a reservation";
                return false;
            }
            else return true;
        }

        private void TextPreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = Validations.OnlyAlphabets(e.Text);
        }

        private void PhoneBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (Validations.OnlyNumbers(e.Text) || ((TextBox)sender).Text.Length == 9)
                e.Handled = true;
            else
                e.Handled = false;
        }
    }
}
