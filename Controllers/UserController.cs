using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Polyphony.DataAccess;
using Polyphony.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace Polyphony.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly UserAccess _userAccess;

        public UserController(IConfiguration config)
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