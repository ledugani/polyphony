using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Polyphony.Models
{
    public class PUsers
    {
        // public int Id { get; set; }
        public string Username { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Email { get; set; }
        public bool IsActive { get; set; }
        public string FirebaseId { get; set; }
    }
}
