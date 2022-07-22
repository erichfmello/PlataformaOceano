using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("v1/Test")]
    public class TestController : ControllerBase
    {
        [Route("TestConection"), HttpPost]
        public string TestConection()
        {
            return "Application is online";
        }
    }
}
