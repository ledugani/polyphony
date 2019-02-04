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
        public string roomName { get; set; }
        public string roomDescription { get; set; }
    }
}
