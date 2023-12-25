using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryDAL
{
    public class DBHelper
    {
        public static SqlConnection GetConnection()
        {
            string[] connectionStrings = {
               // @"Server=tcp:eu-az-sql-serv1.database.windows.net,1433;Initial Catalog=d3sxd3x0ems31qt;Persist Security Info=False;User ID=uv76v2xmjupncgz;Password=48UFIUPwu&2x9qz#c$8qnH#y3;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;",
                @"Data Source=.;Initial Catalog=db_pharmacy;Integrated Security=True" 
            };

            SqlConnection con = null;

            foreach (string connectionString in connectionStrings)
            {
                try
                {
                    con = new SqlConnection(connectionString);
                    con.Open();
                    // If connection is successful, break the loop
                    break;
                }
                catch (SqlException)
                {
                    // Handle exceptions or try the next connection string
                    con?.Close();
                    con?.Dispose();
                    con = null;
                }
            }

            if (con == null)
            {
                throw new Exception("Failed to establish a connection to the database.");
            }
            con.Close();
            return con;
        }
    }
}