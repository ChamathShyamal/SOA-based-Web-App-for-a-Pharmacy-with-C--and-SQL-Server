using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class WarehouseStaffUpdateStcok_WF : System.Web.UI.Page
    {
        AddUpdateSearchStockServiceReference.StockWSSoapClient obj = new AddUpdateSearchStockServiceReference.StockWSSoapClient();

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

        protected void btnUpdateStock_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("update Stock_Table set Drug_Name = '" + txtDrugName.Text + "', Drug_Category = '" + txtDrugCategory.Text + "', Drug_Brand = '" + txtDrugBrand.Text + "', Quantity = '" + txtQuantity.Text + "', Suitability = '" + txtSuitability.Text + "', Supplier_Name = '" + txtSupplierName.Text + "', Supplier_ID = '" + txtSupplierID.Text + "' where Stock_ID = '" + txtStockId.Text + "'", sqlCon);

                int numberOfRecords = cmd.ExecuteNonQuery();

                if (numberOfRecords > 0)
                {
                    lblTxt.Text = "Record Updated";
                }
            }
            catch (Exception ex)
            {
                lblTxt.Text = "Error in Updating Data" + ex;
            }
        }

        protected void btnSearchStock_Click(object sender, EventArgs e)
        {
            GVStockSearch.DataSource = obj.searchStock(txtStockId.Text, txtDrugName.Text, txtDrugCategory.Text, txtDrugBrand.Text, txtSuitability.Text, txtSupplierName.Text, txtSupplierID.Text);
            GVStockSearch.DataBind();

            SqlCommand cmd = new SqlCommand("Select * from Stock_Table where Stock_ID = @Stock_ID or Drug_Name = @Drug_Name or Drug_Category = @Drug_Category or Drug_Brand = @Drug_Brand or Quantity = @Quantity or Suitability = @Suitability or Supplier_Name = @Supplier_Name ", sqlCon);

            cmd.Parameters.AddWithValue("@Stock_ID", txtStockId.Text);
            cmd.Parameters.AddWithValue("@Drug_Name", txtDrugName.Text);
            cmd.Parameters.AddWithValue("@Drug_Category", txtDrugCategory.Text);
            cmd.Parameters.AddWithValue("@Drug_Brand", txtDrugBrand.Text);
            cmd.Parameters.AddWithValue("@Quantity", txtQuantity.Text);
            cmd.Parameters.AddWithValue("@Suitability", txtSuitability.Text);
            cmd.Parameters.AddWithValue("@Supplier_Name", txtSupplierName.Text);
            cmd.Parameters.AddWithValue("@Supplier_ID", txtSupplierID.Text);

            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                txtStockId.Text = da.GetValue(0).ToString();
                txtDrugName.Text = da.GetValue(1).ToString();
                txtDrugCategory.Text = da.GetValue(2).ToString();
                txtDrugBrand.Text = da.GetValue(3).ToString();
                txtQuantity.Text = da.GetValue(4).ToString();
                txtSuitability.Text = da.GetValue(5).ToString();
                txtSupplierName.Text = da.GetValue(6).ToString();
                txtSupplierID.Text = da.GetValue(7).ToString();
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
    }
}