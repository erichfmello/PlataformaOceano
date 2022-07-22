using Core.DataAccess;
using Models.Models;
using System.Collections.Generic;

namespace Core.Business
{
    public class KartBusiness
    {
        public KartBusiness()
        {
        }

        public List<Kart> KartPilotList(int raceID)
        {
            return new KartDataAccess().KartPilotList(raceID);
        }
    }
}