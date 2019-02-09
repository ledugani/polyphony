using Microsoft.AspNetCore.SignalR;
using Polyphony.Models;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;
using System.Security.Claims;

namespace SignalRChat.Hubs
{
    public class ChatHub : Hub
    {
        // private Dictionary<string, string> _clients = new Dictionary<string, string>();

        string UserName => Context.User.FindFirst(x => x.Type == "name").Value;

        public void SendToRoom(string room, string message)
        {
            Clients.Group(room).SendAsync("Receive",  UserName, message);
        }

        public void JoinRoom(string room)
        {
            Groups.AddToGroupAsync(Context.ConnectionId, room);
            Clients.Group(room).SendAsync("ReceiveNotification",$"{UserName} has joined the room.");
        }

        public void LeaveRoom(string room)
        {
            Groups.RemoveFromGroupAsync(Context.ConnectionId, room);
            Clients.Group(room).SendAsync("ReceiveNotification", $"{UserName} has left the room.");
        }

        //protected override Task OnReceivedAsync(IRequest request, string connectionId, string data)
        //{
        //    Messages chatData = JsonConvert.DeserializeObject<Messages>(data);
        //    _clients[connectionId] = chatData.Username;
        //    return Connection.Broadcast(chatData);
        //}

        //protected override Task OnDisconnectAsync(IRequest request, string connectionId)
        //{
        //    string name = _clients[connectionId];
        //    ChatData chatData = new ChatData("Server", string.Format("{0} has left the room.", name));
        //    _clients.Remove(connectionId);
        //    return Connection.Broadcast(chatData);
        //}
    }
}
