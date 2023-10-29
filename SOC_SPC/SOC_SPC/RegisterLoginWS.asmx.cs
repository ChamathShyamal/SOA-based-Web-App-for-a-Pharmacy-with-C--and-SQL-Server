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
    /// Summary description for RegisterLoginWS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    //Creating the database connection
    public class RegisterLoginWS : System.Web.Services.WebService
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

        //Creating web method to register suppliers
        [WebMethod]
        public string registerSupplier(string supplierId, string supplierName, string supCompanyName, string email, string telephone)
        {
            int temp = 0;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Supplier_Table values ('" + supplierId + "','" + supplierName + "','" + supCompanyName + "', '" + email + "','" + telephone + "');", sqlCon);

                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        //Creating web method to register warehouse staff people
        [WebMethod]
        public string registerWarehouseStaff(string warehouseStaffId, string warehouseEmployeeName, string warehouseUsername, string warehousePassword, string warehouseUserType, string warehouseEmail, string warehouseTelephone)
        {
            int temp = 0;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Warehouse_Staff_Table values ('" + warehouseStaffId + "','" + warehouseEmployeeName + "', '" + warehouseUsername + "', '" + warehousePassword + "', '" + warehouseUserType + "', '" + warehouseEmail + "','" + warehouseTelephone + "');", sqlCon);

                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        //Creating web method to register pharmacy staff people
        [WebMethod]
        public string registerPharmacyStaff(string pharmacyStaffId, string pharmacyEmployeeName, string pharmacyUsername, string pharmacyPassword, string pharmacyUserType, string pharmacyName, string pharmacyBranch, string pharmacyEmail, string pharmacyTelephone)
        {
            int temp = 0;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Pharmacy_Staff_Table values ('" + pharmacyStaffId + "','" + pharmacyEmployeeName + "', '" + pharmacyUsername + "', '" + pharmacyPassword + "', '" + pharmacyUserType + "', '" + pharmacyName + "', '" + pharmacyBranch + "', '" + pharmacyEmail + "','" + pharmacyTelephone + "');", sqlCon);

                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }

        [WebMethod]
        public string AutoSupplierId() //Displaying the next Supplier ID automatically for client inside the supplier field
        {
            string supplierId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select Supplier_ID from Supplier_Table", sqlCon);
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
                    int SPR = Int32.Parse(idString);


                    if (SPR >= 1 && SPR < 9)
                    {
                        SPR = SPR + 1;
                        supplierId = "S00" + SPR;
                    }
                    else if (SPR >= 10 && SPR < 99)
                    {
                        SPR = SPR + 1;
                        supplierId = "S0" + SPR;
                    }
                    else if (SPR > 99)
                    {
                        SPR = SPR + 1;
                        supplierId = "S" + SPR;
                    }
                }
                else
                {
                    supplierId = "S001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                supplierId = e1.ToString();
            }
            return supplierId;
        }

        [WebMethod]
        public string AutoWarehouseStaffId() //Displaying the next Warehouse Staff ID automatically for client inside the Warehouse Staff Id field
        {
            string WarehouseStaffId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select Warehouse_Staff_ID from Warehouse_Staff_Table", sqlCon);
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
                    int WSR = Int32.Parse(idString);


                    if (WSR >= 1 && WSR < 9)
                    {
                        WSR = WSR + 1;
                        WarehouseStaffId = "W00" + WSR;
                    }
                    else if (WSR >= 10 && WSR < 99)
                    {
                        WSR = WSR + 1;
                        WarehouseStaffId = "W0" + WSR;
                    }
                    else if (WSR > 99)
                    {
                        WSR = WSR + 1;
                        WarehouseStaffId = "W" + WSR;
                    }
                }
                else
                {
                    WarehouseStaffId = "W001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                WarehouseStaffId = e1.ToString();
            }
            return WarehouseStaffId;
        }

        [WebMethod]
        public string AutoPharmacyStaffId() //Displaying the next Pharmacy Staff ID automatically for client inside the Pharmacy Staff Id field
        {
            string PharmacyStaffId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select Pharmacy_Staff_ID from Pharmacy_Staff_Table", sqlCon);
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
                    int PSR = Int32.Parse(idString);


                    if (PSR >= 1 && PSR < 9)
                    {
                        PSR = PSR + 1;
                        PharmacyStaffId = "P00" + PSR;
                    }
                    else if (PSR >= 10 && PSR < 99)
                    {
                        PSR = PSR + 1;
                        PharmacyStaffId = "P0" + PSR;
                    }
                    else if (PSR > 99)
                    {
                        PSR = PSR + 1;
                        PharmacyStaffId = "P" + PSR;
                    }
                }
                else
                {
                    PharmacyStaffId = "P001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                PharmacyStaffId = e1.ToString();
            }
            return PharmacyStaffId;
        }
    }
}
