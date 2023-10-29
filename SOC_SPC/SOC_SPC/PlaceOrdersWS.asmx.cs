using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SOC_SPC
{
    /// <summary>
    /// Summary description for PlaceOrdersWS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    //Creating the database connection
    public class PlaceOrdersWS : System.Web.Services.WebService
    {
            SqlConnection sqlCon = null;

            public SqlConnection getConnection()
            {
                try
                {
                    sqlCon = new SqlConnection("data source= DESKTOP-2QO8HMV; initial catalog=SOC_SPC_DB; Integrated Security=True");
                    sqlCon.Open();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error Connecting to DB" + ex);
                }
                return sqlCon;
            }

            [WebMethod]
            public string placeOrders(string orderId, string drugName, string drugBrnad, int quantity, string pharmacyName, string branch, string pharmacyStaffId)
            {
                int temp = 0;

                try
                {
                    getConnection();
                    SqlCommand cmd = new SqlCommand("insert into Order_Table values ('" + orderId + "','" + drugName + "', '" + drugBrnad + "', '" + quantity + "', '" + pharmacyName + "', '" + branch + "','" + pharmacyStaffId + "');", sqlCon);

                    temp = cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    return ex.ToString();
                }
                return temp.ToString();
            }

           [WebMethod]
           public DataSet searchOrders(string orderId, string drugName, string drugBrand, string pharmacyName, string branch, string pharmacyStaffId)
           {
                 DataSet ds = new DataSet();
                 try
                 {
                     getConnection();

                     SqlCommand cmd = new SqlCommand("Select * from Order_Table where Order_ID = '" + orderId + "' or Drug_Name = '"+ drugName + "' or Drug_Brand = '"+ drugBrand+ "' or Pharmacy_Name = '"+ pharmacyName + "' or Branch = '"+ branch + "' or Pharmacy_Staff_ID = '"+ pharmacyStaffId + "'", sqlCon);
                     SqlDataAdapter da = new SqlDataAdapter(cmd);

                     da.Fill(ds, "Order_Table");
                 }
                 catch (Exception ex)
                 {
                     Console.WriteLine("Error searching" + ex);
                 }
            return ds;
        }

        [WebMethod]
        public string AutoOrderId() //Displaying the next Order ID automatically for client inside the Order id field
        {
            string orderId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select Order_ID from Order_Table", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                string id = "";
                bool records = dr.HasRows;

                if (records)
                {
                    while (dr.Read())
                    {
                        id = dr[0].ToString();
                    }
                    string idString = id.Substring(1);
                    int ODR = Int32.Parse(idString);

                    if (ODR >= 1 && ODR < 9)
                    {
                        ODR = ODR + 1;
                        orderId = "O00" + ODR;
                    }
                    else if (ODR >= 10 && ODR < 99)
                    {
                        ODR = ODR + 1;
                        orderId = "O0" + ODR;
                    }
                    else if (ODR > 99)
                    {
                        ODR = ODR + 1;
                        orderId = "O" + ODR;
                    }
                }
                else
                {
                    orderId = "O001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                orderId = e1.ToString();
            }
            return orderId;
        }
    }
}
