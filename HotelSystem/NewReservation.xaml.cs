using HotelSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
    /// Interaction logic for NewReservation.xaml
    /// </summary>
    public partial class NewReservation : Page
    {
        DbHotelContext db = new DbHotelContext();
        int RoomId;
        public NewReservation()
        {
            InitializeComponent();
            Title_2.Visibility = Visibility.Collapsed;
            Title_3.Visibility = Visibility.Collapsed;
            dgRooms.Visibility = Visibility.Collapsed;
            Reservation_3.Visibility = Visibility.Collapsed;
            Reservation_4.Visibility = Visibility.Collapsed;
        }

        private void NextButton(object sender, RoutedEventArgs e)
        {
            try
            {
                var rooms = db.Rooms.Where(r => r.Capacity >= (NumberOdPeople.SelectedIndex + 1));

                if (ArrivalDatePicker.SelectedDate == null || DepartureDatePicker.SelectedDate == null)
                {
                    ErrorRooms.Visibility = Visibility.Visible;
                    ErrorRooms.Text = "Arrival or departure date has not been selected";
                }
                else
                {
                    ErrorRooms.Visibility = Visibility.Hidden;
                    Title_2.Visibility = Visibility.Visible;
                    dgRooms.Visibility = Visibility.Visible;

                    var availableRooms = rooms.Where(m => m.Reservation.All(r => r.DepartureDate <= ArrivalDatePicker.DisplayDate || r.ArrivalDate >= DepartureDatePicker.DisplayDate));

                    if (availableRooms.Any())
                    {
                        dgRooms.ItemsSource = availableRooms.OrderBy(o => o.Price).ToList();
                    }
                    else
                    {
                        ErrorRooms.Visibility = Visibility.Visible;
                        ErrorRooms.Text = "There's no free room";
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("A handled exception just occurred: " + ex.Message, "Exception Sample", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
        private void SelectRoom(object sender, RoutedEventArgs e)
        {
            Title_3.Visibility = Visibility.Visible;
            Reservation_3.Visibility = Visibility.Visible;
            Reservation_4.Visibility = Visibility.Visible;

            RoomId = (dgRooms.SelectedItem as Room).Id; 
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            try
            {
                Error.Visibility = Visibility.Hidden;

                if(BirthdayBox.SelectedDate == null)
                    BirthdayBox.SelectedDate = DateTime.Now;

                if (CheckPhone(PhoneTextBox.Text) && CheckSurname(SurnameTextBox.Text) && CheckName(NameTextBox.Text) && CheckEmail(EmailTextBox.Text) && CheckBirthday(BirthdayBox.SelectedDate ?? DateTime.Now))
                {
                    Room room = db.Rooms.Find(RoomId);

                    var dbClient = db.Clients.Where(r => r.Email == EmailTextBox.Text);
                    Client client;

                    if (dbClient.Any())
                    {
                        client = dbClient.Single();
                        client.RegularCustomer = true;
                    }
                    else
                    {
                        client = new Client()
                        {
                            Name = NameTextBox.Text,
                            Surname = SurnameTextBox.Text,
                            Email = EmailTextBox.Text,
                            PhoneNumber = PhoneTextBox.Text,
                            Birthday = BirthdayBox.SelectedDate ?? DateTime.Now,
                            RegularCustomer = false
                        };

                        db.Clients.Add(client);
                    }

                    Reservation reservation = new Reservation()
                    {
                        ArrivalDate = ArrivalDatePicker.SelectedDate ?? DateTime.Now,
                        DepartureDate = DepartureDatePicker.SelectedDate ?? DateTime.Now,
                        CheckIn = false,
                        CheckOut = false,
                        Client = client,
                        Room = room
                    };

                    reservation.Price = (reservation.DepartureDate - reservation.ArrivalDate).TotalDays * room.Price;
                    db.Reservations.Add(reservation);
                    room.Reservation.Add(reservation);
                    client.Reservation.Add(reservation);
                    db.SaveChanges();                    
                    this.NavigationService.Navigate(new Reservations());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("A handled exception just occurred: " + ex.Message, "Exception Sample", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void ArrivalDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            DateTime arrival = ArrivalDatePicker.SelectedDate.Value.AddDays(1);
            DepartureDatePicker.DisplayDateStart = arrival;
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
            if (name.Length < 1)
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Name must be longer than 1 charakters";
                return false;
            }
            else return true;
        }

        private bool CheckSurname(string surname)
        {
            if (surname.Length < 2)
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Surname must be longer than 1 charakter";
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
            if (birthday.Year > (DateTime.Now.Year-18))
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
