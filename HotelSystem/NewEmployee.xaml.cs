using HotelSystem.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.IO.Packaging;
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
    /// Interaction logic for NewEmployee.xaml
    /// </summary>
    public partial class NewEmployee : Page
    {
        DbHotelContext db = new DbHotelContext();
        public NewEmployee()
        {
            InitializeComponent();
        }

        private void NewEmployeeButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Error.Visibility = Visibility.Hidden;

                if (CheckPhone(PhoneBox.Text) && CheckSurname(SurnameTextBox.Text) && CheckName(NameTextBox.Text) && CheckPassword(PasswordTextBox.Password))
                {
                    Employee employee = new Employee()
                    {
                        Name = NameTextBox.Text,
                        Surname = SurnameTextBox.Text,
                        Phone = PhoneBox.Text,
                    };

                    ComboBoxItem ComboItem = (ComboBoxItem)PositionBox.SelectedItem;
                    if (ComboItem.Name.Equals("Admin")) employee.Position = Position.Admin;
                    else if (ComboItem.Name.Equals("Owner")) employee.Position = Position.Owner;
                    else employee.Position = Position.Receptionist;

                    if (db.Users.Where(u => u.Username == UsernameTextBox.Text).Any())
                    {
                        Error.Visibility = Visibility.Visible;
                        Error.Text = "User with this username already exists!";
                    }
                    else
                    {
                        if (UsernameTextBox.Text.Length > 3)
                        {
                            User user = new User() { Username = UsernameTextBox.Text };

                            if (PasswordTextBox.Password.Equals(RepeatPasswordTextBox.Password))
                            {
                                user.Password = PasswordTextBox.Password;
                                employee.User = user;
                                db.Employees.Add(employee);
                                db.Users.Add(user);
                                db.SaveChanges();
                                this.NavigationService.Navigate(new Employees());
                            }
                            else
                            {
                                Error.Visibility = Visibility.Visible;
                                Error.Text = "Passwords aren't the same";
                            }
                        }
                        else
                        {
                            Error.Visibility = Visibility.Visible;
                            Error.Text = "Username is too short";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("A handled exception just occurred: " + ex.Message, "Exception Sample", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private bool CheckPassword(string password)
        {
            if (!Validations.Password(password))
            {
                Error.Visibility = Visibility.Visible;
                Error.Text= "Password should contain:\n - at least 8 character\n - 1 big letter\n - 1 number";
                return false;
            }
            else return true;
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
                Error.Text = "Surnema must be longer than 3 charakters";
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
