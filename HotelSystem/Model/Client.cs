using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelSystem.Model
{
    public class Client
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public bool RegularCustomer { get; set; }
        public System.DateTime Birthday { get; set; }
        public virtual List<Reservation> Reservation { get; set; }
    }
}
