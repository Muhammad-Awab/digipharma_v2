using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using ClassLibraryEnt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryDAL
{
    public class DALCRUD
    {
        public static async Task CRUD(string ProcedureName, SqlParameter[] sqlParameters)
        {
            try
            {
                using (SqlConnection con = DBHelper.GetConnection())
                {
                    await con.OpenAsync();

                    using (SqlCommand cmd = new SqlCommand(ProcedureName, con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddRange(sqlParameters);
                        await cmd.ExecuteNonQueryAsync();
                        await con.CloseAsync();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
        }
        public static async Task<DataTable> ReadTable(string ProcedureName)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection conn = DBHelper.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand(ProcedureName, conn))
                    {
                        await conn.OpenAsync();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        SqlDataReader rdr = await cmd.ExecuteReaderAsync();
                        await conn.CloseAsync();

                        if (dt.Rows.Count > 0)
                        {

                            return dt;

                        }
                        else { return new DataTable(); }
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
                return new DataTable();

            }

        }
        public static async Task<DataTable> ReadDataSpecific(string ProcedureName, SqlParameter[] sqlParameters)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection conn = DBHelper.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand(ProcedureName, conn))
                    {
                        await conn.OpenAsync();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddRange(sqlParameters);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        SqlDataReader rdr = await cmd.ExecuteReaderAsync();
                        await conn.CloseAsync();

                        if (dt.Rows.Count > 0)
                        {

                            return dt;

                        }
                        else { return new DataTable(); }
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
            return new DataTable();

        }

        public static EntBilling GetBillingRecordById(int BillingId)
        {
            EntBilling ee = new EntBilling();


            SqlConnection con = DBHelper.GetConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_GetBillingRecordById", con);
            cmd.Parameters.AddWithValue("@pk_BillingId", BillingId);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                ee.pk_BillingId = (int)sdr["pk_BillingId"];
                ee.TotalPrice = (decimal)sdr["TotalPrice"];
                ee.Discount = (decimal)sdr["Discount"];
                ee.DiscountPerc = (int)sdr["DiscountPerc"];
                ee.GrandTotal = (decimal)sdr["GrandTotal"];
            }
            con.Close();

            return ee;
        }

        public static T GetEntityById<T>(String ProcedureName, SqlParameter[] parameters) where T : new()
        {
            T entity = new T();

            try
            {
                using (SqlConnection conn = DBHelper.GetConnection())
                {
                    using (SqlCommand cmd = new SqlCommand(ProcedureName, conn))
                    {
                        // Add parameters to the command
                        if (parameters != null)
                        {
                            cmd.Parameters.AddRange(parameters);
                        }
                        conn.Open();
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            if (rdr.Read())
                            {
                                // this is made generic now
                                // Assuming the entity has properties with the same names as the columns in the result set
                                foreach (var property in typeof(T).GetProperties())
                                {
                                    if (rdr[property.Name] != DBNull.Value)
                                    {
                                        property.SetValue(entity, rdr[property.Name]);
                                    }
                                    else
                                    {
                                        // If you have values that are null inthe columns you recieve from the db, you can handle them here
                                        if (!property.PropertyType.IsValueType || Nullable.GetUnderlyingType(property.PropertyType) != null)
                                        {
                                            // If the property type is a reference type or a nullable value type, set it to null
                                            property.SetValue(entity, null);
                                        }
                                        else if (property.PropertyType == typeof(int))
                                        {
                                            // Handle DBNull for non-nullable int property, i am choosing -1 for null you can choose something else
                                            property.SetValue(entity, -1);
                                        }
                                    }
                                }

                            }
                        }
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }

            return entity;
        }


        public static EntLogin GetUserByName(string? Username)
        {
            EntLogin ee = new EntLogin();

            try
            {


                SqlConnection con = DBHelper.GetConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_GetAdminByUserName", con);
                cmd.Parameters.AddWithValue("@Username", Username);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ee.UserId = (int)sdr["pk_AdminId"];
                    ee.PharmacyId = (int)sdr["fk_PharmacyId"];
                    ee.Role = sdr["Role"].ToString();
                    ee.Password = sdr["Password"].ToString();
                    ee.Username  = sdr["Username"].ToString();


                }
                con.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
            return ee;

        }




    }
}
