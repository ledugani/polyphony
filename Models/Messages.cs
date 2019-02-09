using System;
namespace Polyphony.Models
{
    public class Messages
    {
        public int RoomId {get; set;}
        public string Content { get; set; }
        public DateTime TimeSent { get; set; }
        public string Username { get; set; }
        public string Group { get; internal set; }

        public Messages(string username, string message)
        {
            Username = username;
            Content = message;
        }
    }
}
