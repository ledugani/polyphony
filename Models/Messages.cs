using System;
namespace Polyphony.Models
{
    public class Messages
    {
        public int RoomId {get; set;}
        public string Content { get; set; }
        public DateTime TimeSent { get; set; }
        public string Username { get; set; }
    }
}
