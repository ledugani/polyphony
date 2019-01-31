using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Polyphony.DataAccess
{
    public class RoomsAccess
    {
        private string connectionstring;

        public RoomsAccess(IConfiguration config) {
            connectionstring = config.GetSection("connectionstring").Value;
        }
    }
}
