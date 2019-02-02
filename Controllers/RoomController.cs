using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Polyphony.DataAccess;

namespace Polyphony.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        private IConfiguration _config;

        public RoomController(IConfiguration config)
        {
            _config = config;
        }

        // private readonly RoomAccess _storage;

        [HttpGet]
        public ActionResult Get() {
            var rooms = new RoomAccess(_config);
            return Ok(rooms.GetRooms());
        }
    }
}