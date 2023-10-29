using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class WarehouseStaffRegistrationWF : System.Web.UI.Page
    {
        RegisterLoginServiceReference.RegisterLoginWSSoapClient obj = new RegisterLoginServiceReference.RegisterLoginWSSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtWarehouseStaffId.Text = obj.AutoWarehouseStaffId();
        }

    protected void btnRegisterWareHouseStaff_Click(object sender, EventArgs e)
        {
            string value = obj.registerWarehouseStaff(txtWarehouseStaffId.Text, txtWareHouseEmployeeName.Text, txtWareHouseUsername.Text, txtWareHousePassword.Text, dlWareHouseUserType.Text, txtWareHouseEmail.Text, txtWareHouseTelephone.Text);
            int record = Int32.Parse(value);

            if (Page.IsValid)
            {
                if (record > 0)
                {
                    lblResult.Text = "Warehouse Employee Registered";
                }
                else
                {
                    lblResult.Text = "Warehouse Employee Registration Unsuccessful";
                }
            }
            else
            {
                lblMsg.Text = "Error in Registering!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtWarehouseStaffId.Text = "";
            txtWareHouseEmployeeName.Text = "";
            txtWareHouseUsername.Text = "";
            txtWareHousePassword.Text = "";
            txtWareHouseConPassword.Text = "";
            txtWareHouseEmail.Text = "";
            txtWareHouseTelephone.Text = "";
        }
    }
}