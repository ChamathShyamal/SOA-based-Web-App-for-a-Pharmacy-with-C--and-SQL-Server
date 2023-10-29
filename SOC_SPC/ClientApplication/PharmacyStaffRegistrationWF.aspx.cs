using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class PharmacyStaffRegistrationWF : System.Web.UI.Page
    {
        RegisterLoginServiceReference.RegisterLoginWSSoapClient obj = new RegisterLoginServiceReference.RegisterLoginWSSoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
           txtPharmacyStaffId.Text = obj.AutoPharmacyStaffId();
        }

        protected void btnRegisterPharmacyStaff_Click(object sender, EventArgs e)
        {
            string value = obj.registerPharmacyStaff(txtPharmacyStaffId.Text, txtPharmacyEmployeeName.Text, txtPharmacyUsername.Text, txtPharmacyPassword.Text, dlPharmacyUserType.Text, txtPharmacyName.Text, txtBranch.Text, txtPharmacyEmail.Text, txtPharmacyTelephone.Text);
            int record = Int32.Parse(value);

            if (Page.IsValid)
            {
                if (record > 0)
                {
                    lblResult.Text = "Pharmacy Employee Registered";
                }
                else
                {
                    lblResult.Text = "Pharmacy Employee Registration Unsuccessful";
                }
            }
            else
            {
                lblMsg.Text = "Error in Registering!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPharmacyStaffId.Text = "";
            txtPharmacyEmployeeName.Text = "";
            txtPharmacyUsername.Text = "";
            txtPharmacyPassword.Text = "";
            txtPharmacyConPassword.Text = "";
            txtPharmacyName.Text = "";
            txtBranch.Text = "";
            txtPharmacyEmail.Text = "";
            txtPharmacyTelephone.Text = "";
        }
    }
}