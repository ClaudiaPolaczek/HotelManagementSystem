using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelSystem.Model
{
    public class Room
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public int Floor { get; set; }
        public double Price { get; set; }
        public bool Suite { get; set; }
        public int Capacity { get; set; }
        public virtual List<Reservation> Reservation { get; set; }
    }
}
