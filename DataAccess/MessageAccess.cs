
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

        public IEnumerable<Messages> GetMessages()
        {
            using (var db = new SqlConnection(connectionstring))
            {
                db.Open();

                var result = db.Query<Messages>(@"SELECT * FROM messagesent");

                return result.ToList();
            }
        }
    }
}
