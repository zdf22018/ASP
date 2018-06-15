using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sqldatasourcecontrol
{
    public partial class SearchPage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {//replace selectCommand in the aspx file to load dynamically the column name in query

            SqlDataSource2.SelectCommand =
                "SELECT * FROM [Customers] WHERE ([" + DropDownList1.SelectedValue + "] = @CustomerID)";
        }
    }
}