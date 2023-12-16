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
        public static EntCounts GetCount(int pharmacyId)
        {
            EntCounts ee = new EntCounts();
            try
            {

                SqlConnection con = DBHelper.GetConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_GetTableCounts", con);
                cmd.Parameters.AddWithValue("@fk_PharmacyId", pharmacyId);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {
                    ee.MedCounts = int.Parse(sdr["Medicine_Record"].ToString());
                    ee.SalesCounts = int.Parse(sdr["Billing_Record"].ToString());
                    ee.UserCounts = int.Parse(sdr["User_Record"].ToString());
                  
                }
                con.Close();

            }
            catch (Exception ex)
            {
               Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
            return ee;
        }

        public static EntRegistration GetUserByName(string? username)
        {
            EntRegistration ee = new EntRegistration();

            try
            {


                SqlConnection con = DBHelper.GetConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_GetUserByName", con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ee.pk_pharmacyId = sdr["fk_PharmacyId"].ToString();
                    ee.AdminName = sdr["AdminName"].ToString();
                    ee.Username = sdr["Username"].ToString();
                    ee.PharmacyName = sdr["pharmacyName"].ToString();
                    ee.Password = sdr["Password"].ToString();
                    ee.Role = sdr["Role"].ToString();


                }
                con.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception Occurred: {ex.Message}");
            }
            return ee;

        }
        public static EntEmployeeRecord GetEmployeeByName(string? username)
        {
            EntEmployeeRecord ee = new EntEmployeeRecord();

            try
            {


                SqlConnection con = DBHelper.GetConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_LoginEmployee", con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    ee.fk_PharmacyId = int.Parse(sdr["fk_PharmacyId"].ToString());
                    ee.UserFullName = sdr["UserFullName"].ToString();
                    ee.Username = sdr["Username"].ToString();
                    ee.Password = sdr["Password"].ToString();
                    ee.PharmacyName = sdr["pharmacyName"].ToString();
                    ee.Role = sdr["Role"].ToString();
                    ee.UserImg = sdr["UserImg"].ToString();


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
