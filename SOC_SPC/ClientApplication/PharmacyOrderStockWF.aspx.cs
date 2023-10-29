using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class PharmacyOrderStock : System.Web.UI.Page
    {
        PlaceOrdersServiceReference.PlaceOrdersWSSoapClient obj = new PlaceOrdersServiceReference.PlaceOrdersWSSoapClient();
        SqlConnection sqlCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtOrderId.Text = obj.AutoOrderId();
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            string value = obj.placeOrders(txtOrderId.Text, txtDrugName.Text, txtDrugBrand.Text, Convert.ToInt32(txtQuantity.Text), txtPharmacyName.Text, txtBranch.Text, txtPharmacyStaffId.Text);
            int record = Int32.Parse(value);

            if (Page.IsValid)
            {
                if (record > 0)
                {
                    lblResult.Text = "Order Placed";
                }
                else
                {
                    lblResult.Text = "Order Placing Unsuccessful";
                }
            }
            else
            {
                lblMsg.Text = "Error In Placing!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtOrderId.Text = "";
            txtDrugName.Text = "";
            txtDrugBrand.Text = "";
            txtQuantity.Text = "";
            txtPharmacyName.Text = "";
            txtBranch.Text = "";
            txtPharmacyStaffId.Text = "";
        }

        protected void btnGetPharmacyStaffId_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection("data source= DESKTOP-2QO8HMV; initial catalog=SOC_SPC_DB; Integrated Security=True");
            sqlCon.Open();

            SqlCommand cmd = new SqlCommand("Select Branch , Pharmacy_Staff_ID from Pharmacy_Staff_Table where Pharmacy_Name =@Pharmacy_Name", sqlCon);

            cmd.Parameters.AddWithValue("@Pharmacy_Name", txtPharmacyName.Text);

            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                txtBranch.Text = da.GetValue(0).ToString();
                txtPharmacyStaffId.Text = da.GetValue(1).ToString();
            }
        }
    }
}