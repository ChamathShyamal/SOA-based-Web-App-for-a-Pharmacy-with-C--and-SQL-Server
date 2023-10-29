using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class ManagerMenuWF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegSuppliers_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupplierRegistrationWF.aspx");
        }

        protected void btnRegWarehouseStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("WarehouseStaffRegistrationWF.aspx");
        }

        protected void btnRegPharmacyStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("PharmacyStaffRegistrationWF.aspx");
        }

        protected void btnAddStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerAddStockWF.aspx");
        }

        protected void btnUpdateStocks_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerWarehouseStaffUpdateStockWF.aspx");
        }

        protected void btnViewStockTable_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerViewStocksOrdersWF.aspx");
        }
    }
}