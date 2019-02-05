using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Polyphony.Models
{
    public class PUsers
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public bool IsActive { get; set; }
        public string FirebaseId { get; set; }
    }
}
