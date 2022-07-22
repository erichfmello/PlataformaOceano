using Dapper;
using Models.Models;
using System.Collections.Generic;

namespace Core.DataAccess
{
    class KartDataAccess
    {
        public KartDataAccess()
        {
        }

        public List<Kart> KartPilotList(int raceID, TunrsEnum tunrsEnum)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("RaceID", raceID);
            parameters.Add("Turns", tunrsEnum);

            return new Utils.Database().ExecuteQuery<Kart>("KartPilotList", parameters);
        }
    }
}
