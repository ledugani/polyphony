
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

        public List<Rooms> GetRooms()
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var result = db.Query<Rooms>(@"SELECT * FROM room");

                return result.ToList();
            }
        }
    }
}
