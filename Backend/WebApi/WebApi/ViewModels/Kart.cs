namespace WebApi.ViewModels
{
    public class KartRequest : _BaseRequest
    {
        public int RaceID { get; set; }
    }

    public class KartResponse : _BaseListResponse<Models.Models.Kart>
    {
    }
}
