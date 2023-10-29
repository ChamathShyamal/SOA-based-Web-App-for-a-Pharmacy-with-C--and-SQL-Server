using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class SupplierRegistrationWF : System.Web.UI.Page
    {
        RegisterLoginServiceReference.RegisterLoginWSSoapClient obj = new RegisterLoginServiceReference.RegisterLoginWSSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            txtSupplierId.Text = obj.AutoSupplierId();
        }

        protected void btnRegisterSupplier_Click(object sender, EventArgs e)
        {
            string value = obj.registerSupplier(txtSupplierId.Text, txtSupplierName.Text, txtSupCompanyName.Text, txtSupEmail.Text, txtSupTelephone.Text);

            int record = Int32.Parse(value);

            if (Page.IsValid)
            {
                if (record > 0)
                {
                    lblResult.Text = "Supplier Registered ";
                }
                else
                {
                    lblResult.Text = "Supplier Registration Unsuccessful";
                }
            }
            else
            {
                lblMsg.Text = "Error in Registering!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSupplierId.Text = "";
            txtSupplierName.Text = "";
            txtSupCompanyName.Text = "";
            txtSupEmail.Text = "";
            txtSupTelephone.Text = "";
        }
    }
}