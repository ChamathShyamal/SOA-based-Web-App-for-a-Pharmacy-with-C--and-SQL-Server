using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class ManagerViewStocksOrdersWF : System.Web.UI.Page
    {
        PlaceOrdersServiceReference.PlaceOrdersWSSoapClient obj = new PlaceOrdersServiceReference.PlaceOrdersWSSoapClient();

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
                lblError.Text = "Error in connecting DB" + ex;
            }
        }

        protected void btnViewStock_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select* from Stock_Table", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                GVStockOrdersView.DataSource = dr;
                GVStockOrdersView.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error In Viewing" + ex;
            }
        }

        protected void btnViewOrders_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select* from Order_Table", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                GVStockOrdersView.DataSource = dr;
                GVStockOrdersView.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error In Viewing" + ex;
            }
        }

        protected void btnSearchOrders_Click(object sender, EventArgs e)
        {
            GVStockOrdersView.DataSource = obj.searchOrders(txtOrderId.Text, txtDrugName.Text, txtDrugBrand.Text, txtPharmacyName.Text, txtBranch.Text, txtPharmacyStaffId.Text);
            GVStockOrdersView.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtOrderId.Text = "";
            txtDrugName.Text = "";
            txtDrugBrand.Text = "";
            txtPharmacyName.Text = "";
            txtBranch.Text = "";
            txtPharmacyStaffId.Text = "";
        }
    }
}