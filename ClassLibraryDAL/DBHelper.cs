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
                @"Data Source=.;Initial Catalog=db_pharmacy;Integrated Security=True",
                @"Data Source=.;Initial Catalog=db_pharmacy;Integrated Security=True" // Add your second connection string here
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