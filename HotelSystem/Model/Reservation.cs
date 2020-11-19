using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelSystem.Model
{
    public class Reservation
    {
        public int Id { get; set; }
        public System.DateTime ArrivalDate { get; set; }
        public System.DateTime DepartureDate { get; set; }
        public bool CheckIn { get; set; }
        public bool CheckOut { get; set; }
        public double Price { get; set; }
        public int ClientId { get; set; }
        public virtual Client Client { get; set; }
        public int RoomId { get; set; }
        public virtual Room Room { get; set; }
    }
}
