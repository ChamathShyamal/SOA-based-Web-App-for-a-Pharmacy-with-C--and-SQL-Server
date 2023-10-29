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
    /// Summary description for StockWS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    //Creating the database connection
    public class StockWS : System.Web.Services.WebService
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
        public string addStock(string stockId, string drugName, string drugCategory, string drugBrnad, int quantity, string suitabiliy, string supplierName, string supplierId)
        {
            int temp = 0;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Stock_Table values ('" + stockId + "','" + drugName + "','" + drugCategory + "', '" + drugBrnad + "', '" + quantity + "', '" + suitabiliy + "', '" + supplierName + "','" + supplierId + "');", sqlCon);

                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        [WebMethod]
        public DataSet searchStock(string stockId, string drugName, string drugCategory, string drugBrand, string suitability, string supplierName, string supplierId)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from Stock_Table where Stock_ID = '" + stockId + "' or Drug_Name = '"+ drugName + "' or Drug_Category = '"+ drugCategory + "' or Drug_Brand = '"+ drugBrand + "' or Suitability = '"+ suitability + "' or Supplier_Name = '"+ supplierName + "' or Supplier_ID = '" + supplierId + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds, "Stock_Table");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error searching" + ex);
            }
            return ds;
        }

        [WebMethod]
        public string AutoStockId() //Displaying the next Category ID automatically for client inside the category if field
        {
            string stockId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select Stock_ID from Stock_Table", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                string id = "";
                bool records = dr.HasRows;

                if (records)
                {
                    while (dr.Read())
                    {
                        id = dr[0].ToString();
                    }
                    string idString = id.Substring(2);
                    int STK = Int32.Parse(idString);


                    if (STK >= 1 && STK < 9)
                    {
                        STK = STK + 1;
                        stockId = "ST00" + STK;
                    }
                    else if (STK >= 10 && STK < 99)
                    {
                        STK = STK + 1;
                        stockId = "ST0" + STK;
                    }
                    else if (STK > 99)
                    {
                        STK = STK + 1;
                        stockId = "ST" + STK;
                    }
                }
                else
                {
                    stockId = "ST001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                stockId = e1.ToString();
            }
            return stockId;
        }
    }
}

