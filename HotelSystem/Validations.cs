using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace HotelSystem
{
    public class Validations
    {
        public static bool OnlyNumbers(string text)
        {
            Regex regex = new Regex("[^0-9]+");
            return regex.IsMatch(text);
        }

        public static bool OnlyDouble(string text)
        {
            var regex = new Regex(@"^[0-9]*(?:\.[0-9]*)?$");
            return regex.IsMatch(text);
        }

        public static bool OnlyAlphabets(string text)
        {
            Regex regex = new Regex("[^a-zA-Z]");
            return regex.IsMatch(text);
        }
        public static bool Password(string text)
        {
            Regex regex = new Regex(@"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
            return regex.IsMatch(text);
        }
        public static bool Email(string text)
        {
            Regex regex = new Regex(@"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");
            return regex.IsMatch(text);
        }
    }
}
