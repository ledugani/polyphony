using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Polyphony.DataAccess;
using Polyphony.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace bangazon2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private readonly UserAccess _userAccess;

        public CustomerController(IConfiguration config)
        {
            _userAccess = new UserAccess(config);
        }

        [HttpPost("NewUser")]
        public IActionResult AddNewUser(PUsers pUser)
        {
            return Ok(_userAccess.AddNewUser(pUser));
        }
    }
}