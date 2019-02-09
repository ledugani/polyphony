using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Polyphony.DataAccess;
using Polyphony.Models;

namespace Polyphony.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        private readonly RoomAccess _roomAccess;

        public RoomController(IConfiguration config)
        {
            _roomAccess = new RoomAccess(config);
        }

        [HttpGet]
        public ActionResult<IEnumerable<string>> Get() {
            return Ok(_roomAccess.GetRooms());
        }

        [HttpGet("{id}")]
        public IActionResult GetRoomById(int id)
        {
            var result = _roomAccess.GetById(id);
            return Ok(result);
        }
    }
}