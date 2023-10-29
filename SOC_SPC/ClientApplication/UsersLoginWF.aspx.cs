using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class UsersLoginWF : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
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
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (dlUserType.SelectedValue == "Manager")
                {
                    if (txtUsername.Text == "Manager" && txtPassword.Text == "Manager123")
                    {
                        Response.Redirect("ManagerMenuWF.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Invalid Login Credentials! Try Again";
                    }
                }

                else if (dlUserType.SelectedValue == "Warehouse Staff")
                {
                    string warehouseUname = txtUsername.Text;
                    string warehousePass = txtPassword.Text;
                    string warehouseQry = "select * from Warehouse_Staff_Table where Username='" + warehouseUname + "' and Password='" + warehousePass + "'";
                    SqlCommand cmd = new SqlCommand(warehouseQry, sqlCon);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Response.Redirect("ManagerWarehouseStaffUpdateStockWF.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Invalid Login Credentials! Try Again";

                    }
                    sqlCon.Close();
                }

                else if (dlUserType.SelectedValue == "Pharmacy Staff")
                {
                    string pharmacyUname = txtUsername.Text;
                    string pharmacyPass = txtPassword.Text;
                    string pharmacyQry = "select * from Pharmacy_Staff_Table where Username='" + pharmacyUname + "' and Password='" + pharmacyPass + "'";
                    SqlCommand cmd = new SqlCommand(pharmacyQry, sqlCon);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Response.Redirect("PharmacyStaffMenuWF.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Invalid Login Credentials! Try Again";

                    }
                    sqlCon.Close();
                }
            }
            else
            {
                lblMsg.Text = "Error in Login!";
            }
        }
    }
}
           