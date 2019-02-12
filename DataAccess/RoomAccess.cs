
using Dapper;
using System.Linq;
using Polyphony.Models;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;

namespace Polyphony.DataAccess
{
    public class RoomAccess
    {
        private readonly string connectionstring;

        public RoomAccess(IConfiguration config) {
            connectionstring = config.GetSection("ConnectionString").Value;
        }

        public IEnumerable<Rooms> GetRooms()
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var result = db.Query<Rooms>(@"SELECT * FROM room");

                return result.ToList();
            }
        }

        public Rooms GetById(int id)
        {
            using (var connection = new SqlConnection(connectionstring))
            {
                connection.Open();

                var result = connection.QueryFirst<Rooms>(@"SELECT *
                                                                FROM Room
                                                                WHERE Room.roomId = @id", new { id });
                return result;
            }
        }

        public bool AddRoom(Rooms room)
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var labamba = db.Execute(@"INSERT INTO room (creator, roomname, roomdescription, tunelink) 
                                                    VALUES (@creator,@roomname,@roomdescription,@tunelink);", room);

                return labamba == 1;
            }
        }
    }
}
