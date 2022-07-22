namespace WebApi.ViewModels
{
    public class KartRequest : _BaseRequest
    {
        public int RaceID { get; set; }
        public Models.Models.TunrsEnum TunrsEnum { get; set; }
    }

    public class KartResponse : _BaseListResponse<Models.Models.Kart>
    {
    }
}
