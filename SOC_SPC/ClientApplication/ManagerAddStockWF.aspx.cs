using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class ManagerAddUpdateStockWF : System.Web.UI.Page
    {
        AddUpdateSearchStockServiceReference.StockWSSoapClient obj = new AddUpdateSearchStockServiceReference.StockWSSoapClient();
        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtStockId.Text = obj.AutoStockId();
        }

    protected void btnAddStock_Click(object sender, EventArgs e)
        {
            string value = obj.addStock(txtStockId.Text, txtDrugName.Text, txtDrugCategory.Text, txtDrugBrand.Text, Convert.ToInt32(txtQuantity.Text), txtSuitability.Text, txtSupplierName.Text, txtSupplierID.Text);
            int record = Int32.Parse(value);

            if (Page.IsValid)
            {
                if (record > 0)
                {
                    lblResult.Text = "Stock Added";
                }
                else
                {
                    lblResult.Text = "Stock Adding Unsuccessful";
                }
            }
            else
            {
                lblMsg.Text = "Error in Adding!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtStockId.Text = "";
            txtDrugName.Text = "";
            txtDrugCategory.Text = "";
            txtDrugBrand.Text = "";
            txtQuantity.Text = "";
            txtSuitability.Text = "";
            txtSupplierName.Text = "";
            txtSupplierID.Text = "";
        }

        protected void btnGetSupplierId_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection("data source= DESKTOP-2QO8HMV; initial catalog=SOC_SPC_DB; Integrated Security=True");
            sqlCon.Open();

            SqlCommand cmd = new SqlCommand("Select Supplier_ID from Supplier_Table where Supplier_Name =@Supplier_Name", sqlCon);

            cmd.Parameters.AddWithValue("@Supplier_Name", txtSupplierName.Text);

            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                txtSupplierID.Text = da.GetValue(0).ToString();
            }
        }
    }
}