using MixERP.Net.DbFactory;
using Npgsql;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using DbConnection = MixERP.Net.WebControls.ReportEngine.Data.Connection.DbConnection;

namespace MixERP.Net.WebControls.ReportEngine.Data
{
    public static class TableHelper
    {
        public static DataTable GetDataTable(string catalog, string sql, Collection<KeyValuePair<string, object>> parameters)
        {
            /**************************************************************************************
            A MixERP report is a developer-only feature.
            But, that does not guarantee that there will be no misuse.
            So, the possible risk factor cannot be ignored altogether in this context.
            Therefore, a review for defense against possible
            SQL Injection Attacks is absolutely required here.

            Although, we connect to PostgreSQL Database Server using a login "report_user"
            which has a read-only access for executing the SQL statements to produce the report.

            The SQL query is expected to have only the SELECT statement, but there is no
            absolute and perfect way to parse and determine that the query contained
            in the report is actually a "SELECT-only" statement.

            Moreover, the prospective damage could occur due to somebody messing up
            with the permission of the database user "report_user" which is restricted by default
            with a read-only access.

            This could happen on the DB server, where we cannot "believe"
            that the permissions are perfectly intact.

            TODO: Investigate more on how this could be done better.
            ***************************************************************************************/

            if (string.IsNullOrWhiteSpace(sql))
            {
                return null;
            }

            using (NpgsqlCommand command = new NpgsqlCommand(sql))
            {
                if (parameters != null)
                {
                    foreach (KeyValuePair<string, object> p in parameters)
                    {
                        command.Parameters.AddWithValue(p.Key, p.Value);
                    }
                }

                //A separate connection to database using a restricted login is established here.
                string connectionString = DbConnection.ReportConnectionString(catalog);

                return DbOperation.GetDataTable(command, connectionString);
            }
        }
    }
}