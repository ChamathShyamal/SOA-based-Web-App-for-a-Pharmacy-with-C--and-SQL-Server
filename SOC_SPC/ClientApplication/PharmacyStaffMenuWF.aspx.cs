using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientApplication
{
    public partial class PharmacyStaffMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrderStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("PharmacyOrderStockWF.aspx");
        }

        protected void btnSearchStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("PharmacySearchStockWF.aspx");
        }
    }
}