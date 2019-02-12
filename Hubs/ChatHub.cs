using Microsoft.AspNetCore.SignalR;
using Polyphony.Models;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;
using System.Security.Claims;
using System.Collections.Concurrent;
using System.Linq;

namespace SignalRChat.Hubs
{
    public class ChatHub : Hub
    {
        // private Dictionary<string, string> _clients = new Dictionary<string, string>();
        static ConcurrentDictionary<string, List<string>> _usersInRooms = new ConcurrentDictionary<string, List<string>>();

        string UserName => Context.User.FindFirst(x => x.Type == "name").Value;

        public void SendToRoom(string room, string message)
        {
            Clients.Group(room).SendAsync("Receive",  UserName, message);

            //mydatabaseclass.addmessage(room,message);

        }

        public async Task JoinRoom(string room)
        {
            await Groups.AddToGroupAsync(Context.ConnectionId, room);
            await Clients.Group(room).SendAsync("ReceiveNotification",$"{UserName} has joined the room.");

            if(!_usersInRooms.ContainsKey(room))
            {
                _usersInRooms.TryAdd(room, new List<string>());
            }

            if(!_usersInRooms[room].Any(u => u == UserName) ){
                _usersInRooms[room].Add(UserName);
            }

            await Clients.Group(room).SendAsync("ActiveUsersChanged", _usersInRooms[room]);

        }

        public async Task LeaveRoom(string room)
        {
            await Groups.RemoveFromGroupAsync(Context.ConnectionId, room);
            await Clients.Group(room).SendAsync("ReceiveNotification", $"{UserName} has left the room.");

            if (_usersInRooms.ContainsKey(room))
            {
                _usersInRooms[room].Remove(UserName);
                await Clients.Group(room).SendAsync("ActiveUsersChanged", _usersInRooms[room]);
            }
        }
    }
}
