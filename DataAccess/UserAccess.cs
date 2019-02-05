using Dapper;
using System.Linq;
using Polyphony.Models;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;

namespace Polyphony.DataAccess
{
    public class UserAccess
    {
        private readonly string connectionstring;

        public UserAccess(IConfiguration config)
        {
            connectionstring = config.GetSection("ConnectionString").Value;
        }
    }
}
