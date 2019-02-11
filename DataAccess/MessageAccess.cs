
using Dapper;
using System.Linq;
using Polyphony.Models;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;

namespace Polyphony.DataAccess
{
    public class MessageAccess
    {
        private readonly string connectionstring;

        public MessageAccess(IConfiguration config)
        {
            connectionstring = config.GetSection("ConnectionString").Value;
        }

        public IEnumerable<Messages> GetMessagesFromRoom(int roomid)
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var result = db.Query<Messages>(@"SELECT * FROM messagesent WHERE roomid = @roomid", new { roomid });

                return result.ToList();
            }
        }

        public bool AddMessage(Messages message)
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var banana = db.Execute(@"INSERT INTO messagesent (roomid, content, timesent, username) 
                                                    VALUES (@roomid,@content,getDate(),@Username);", message);

                return banana == 1;
            }
        }
    }
}
