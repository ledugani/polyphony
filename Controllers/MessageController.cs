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
    public class MessageController : ControllerBase
    {
        private readonly MessageAccess _messageAccess;

        public MessageController(IConfiguration config)
        {
            _messageAccess = new MessageAccess(config);
        }

        [HttpGet("{roomid}")]
        public ActionResult<IEnumerable<string>> Get(int roomid)
        {
            return Ok(_messageAccess.GetMessagesFromRoom(roomid));
        }
    }
}