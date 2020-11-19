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
using System.Windows.Shapes;

namespace HotelSystem
{
    /// <summary>
    /// Interaction logic for LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Window
    {
        DbHotelContext db = new DbHotelContext();
        public LoginPage()
        {
            InitializeComponent();
        }

        private void Login(object sender, RoutedEventArgs e)
        {
            if(UsernameTextBox.Text.Length == 0 || PasswordTextBox.Password.Length == 0)
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "Username or password is inccorect";
            }
            else
            {
                if(db.Employees.Where(u => u.User.Username == UsernameTextBox.Text).Any())
                {
                    Employee employee = db.Employees.Where(u => u.User.Username == UsernameTextBox.Text).Single();
                    
                    if (employee.User.Password.Equals(PasswordTextBox.Password))
                    {
                        Position p = employee.Position;

                        if (p.Equals(Position.Admin))
                        {
                            Admin admin = new Admin();
                            admin.Show();
                        }
                        else if (p.Equals(Position.Owner))
                        {
                            HotelOwner owner = new HotelOwner(employee.Name + " " +  employee.Surname);
                            owner.Show();
                        }
                        else if (p.Equals(Position.Receptionist))
                        {
                            MainWindowReception reception = new MainWindowReception(employee.Name + " " + employee.Surname);
                            reception.Show();
                        }
                        this.Close();
                    }
                    else
                    {
                        ErrorBox.Visibility = Visibility.Visible;
                        ErrorBox.Text = "Username or password is inccorect";
                    }
                }    
                else
                {
                    ErrorBox.Visibility = Visibility.Visible;
                    ErrorBox.Text = "Username or password is inccorect";
                }
            }
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if(e.LeftButton == MouseButtonState.Pressed) DragMove();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
