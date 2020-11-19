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
    /// Interaction logic for EditEmployee.xaml
    /// </summary>
    public partial class EditEmployee : Page
    {
        DbHotelContext db = new DbHotelContext();
        int _Id;
        public EditEmployee(int employeeId)
        {
            InitializeComponent();
            Information.Visibility = Visibility.Visible;
            Account.Visibility = Visibility.Hidden;

            if (employeeId != 0)
            {
                _Id = employeeId;
                LoadData();
            }
            else _Id = 0;
        }

        public void LoadData()
        {
            Employee employee = db.Employees.Find(_Id);

            NameTextBox.Text = employee.Name;
            SurnameTextBox.Text = employee.Surname;
            PhoneBox.Text = employee.Phone;
            PositionBox.Text = employee.Position.ToString();

            User user = employee.User;
            UsernameTextBox.Text = user.Username;
        }

        private void EditAccountButton_Click(object sender, RoutedEventArgs e)
        {   
            Error.Visibility = Visibility.Hidden;
            
            Employee employee = db.Employees.Find(_Id);
            User updateUser = employee.User;
            if (CheckPassword(PasswordTextBox.Password))
            {
                if (db.Users.Where(u => u.Username == UsernameTextBox.Text).Any())
                {
                    Error.Visibility = Visibility.Visible;
                    Error.Text = "User with this username already exists!";
                }
                else
                {
                    if (UsernameTextBox.Text.Length > 3)
                    {
                        updateUser.Username = UsernameTextBox.Text;
                        if (PasswordTextBox.Password.Equals(RepeatPasswordTextBox.Password))
                        {
                            updateUser.Password = PasswordTextBox.Password;
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
        private void EditPersonalButton_Click(object sender, RoutedEventArgs e)
        {
            Error.Visibility = Visibility.Hidden;
            Employee updateEmployee = db.Employees.Find(_Id);

            if (CheckPhone(PhoneBox.Text) && CheckSurname(SurnameTextBox.Text) && CheckName(NameTextBox.Text))
            {
                updateEmployee.Name = NameTextBox.Text;
                updateEmployee.Surname = SurnameTextBox.Text;
                updateEmployee.Phone = PhoneBox.Text;

                ComboBoxItem ComboItem = (ComboBoxItem)PositionBox.SelectedItem;
                string name = ComboItem.Name;

                if (name.Equals("Admin")) updateEmployee.Position = Position.Admin;
                else if (name.Equals("Owner")) updateEmployee.Position = Position.Owner;
                else updateEmployee.Position = Position.Receptionist;

                db.SaveChanges();
                this.NavigationService.Navigate(new Employees());
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Information.Visibility = Visibility.Visible;
            Account.Visibility = Visibility.Hidden;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Information.Visibility = Visibility.Hidden;
            Account.Visibility = Visibility.Visible;
        }

        private bool CheckPassword(string password)
        {
            if (!Validations.Password(password))
            {
                Error.Visibility = Visibility.Visible;
                Error.Text = "Password should contain:\n - at least 8 character\n - 1 big letter\n - 1 number";
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
