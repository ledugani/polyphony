using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Polyphony.Models
{
    public class Rooms
    {
        public int RoomId { get; set; }
        public int ArtistId { get; set; }
        public DateTime CurrentTime { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public string RoomName { get; set; }
        public string RoomDescription { get; set; }
    }
}
