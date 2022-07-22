using System.Collections.Generic;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using Dapper;
using System;

namespace Core.Utils
{
    class Database
    {
        private readonly string connectionString = "Server=localhost\\SQLEXPRESS;Database=PlataformaOceano_Kart;Trusted_Connection=True;TrustServerCertificate=True;";

        public List<T> ExecuteQuery<T>(string procedure, DynamicParameters parameters)
        {
            var stopWatch = Stopwatch.StartNew();
            int commandTimeoutSeconds = 180;

            try
            {
                var command = new Dapper.CommandDefinition(procedure, parameters, commandTimeout: commandTimeoutSeconds, commandType: CommandType.StoredProcedure);
                var ret = Dapper.SqlMapper.Query<T>(new SqlConnection(connectionString), command).ToList();

                stopWatch.Stop();

                return ret;
            }
            catch (Exception ex)
            {
                stopWatch.Stop();
                return null;
            }
        }
    }
}
