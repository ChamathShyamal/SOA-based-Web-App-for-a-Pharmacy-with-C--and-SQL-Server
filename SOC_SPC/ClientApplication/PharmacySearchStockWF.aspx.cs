using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class PharmacySearchOrderStock : System.Web.UI.Page
    {
        AddUpdateSearchStockServiceReference.StockWSSoapClient obj = new AddUpdateSearchStockServiceReference.StockWSSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPharmacySearchStock_Click(object sender, EventArgs e)
        {
            GVPharmacySearchStock.DataSource = obj.searchStock(txtStockId.Text, txtDrugName.Text, txtDrugCategory.Text, txtDrugBrand.Text, txtSuitability.Text, txtSupplierName.Text, txtSupplierID.Text);
            GVPharmacySearchStock.DataBind();
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