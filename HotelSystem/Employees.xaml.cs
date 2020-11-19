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
    /// Interaction logic for Employees.xaml
    /// </summary>
    public partial class Employees : Page
    {
        DbHotelContext db = new DbHotelContext();
        public Employees()
        {
            InitializeComponent();
            dgEmployees.ItemsSource = db.Employees.ToList();
        }

        private void NewEmployee_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new NewEmployee());
        }

        private void DeleteEmployee(object sender, RoutedEventArgs e)
        {
            int Id = (dgEmployees.SelectedItem as Employee).Id;
            var deleteEmployee = db.Employees.Where(r => r.Id == Id).Single();
            var deleteUser = db.Users.Where(u => u.Username == deleteEmployee.User.Username).Single();

            if (deleteEmployee == null || deleteUser == null)
            {
                ErrorBox.Visibility = Visibility.Visible;
                ErrorBox.Text = "This employee/user don't exist";
            }
            else
            {
                db.Employees.Remove(deleteEmployee);
                db.Users.Remove(deleteUser);
                db.SaveChanges();
                dgEmployees.ItemsSource = db.Rooms.ToList();
            }
        }

        private void EditEmployee(object sender, RoutedEventArgs e)
        {
            int Id = (dgEmployees.SelectedItem as Employee).Id;
            this.NavigationService.Navigate(new EditEmployee(Id));
        }
    }
}
