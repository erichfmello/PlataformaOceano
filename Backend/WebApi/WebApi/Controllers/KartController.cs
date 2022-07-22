using Microsoft.AspNetCore.Mvc;
using System;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("v1/Kart")]
    public class KartController : ControllerBase
    {
        [Route("PilotList"), HttpPost]
        public ViewModels.KartResponse PilotList(ViewModels.KartRequest request)
        {
            ViewModels.KartResponse response = new ViewModels.KartResponse();

            try
            {
                if (response == null)
                {
                    response.Message = "Request nulo!";
                    return response;
                }

                response.Items = new Core.Business.KartBusiness().KartPilotList(request.RaceID);
                response.Succsess = true;
                response.Message = "Consulta realizada com sucesso.";

                return response;
            }
            catch (Exception ex)
            {
                response.Message = $"Erro na consulta -- Message: {ex.Message} -- KartController.PilotList.";
                return response;
            }
        }
    }
}
