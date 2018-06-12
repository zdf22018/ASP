using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sqldatasourcecontrol
{
    public partial class SearchPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=NORTHWND;Integrated Security=True"))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM INFORMATION_SCHEMA.columns where table_name='Customers'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "column_name";
                    DropDownList1.DataValueField = "column_name";
                    DropDownList1.DataBind();
                    con.Close();
                }
            }
        }

        
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string column = DropDownList1.Text;
            string searchText = TextBox1.Text;
            using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=NORTHWND;Integrated Security=True"))
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Customers where " +column+ "='"+searchText+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;

                GridView1.DataBind();
                con.Close();
            }
        }
    }
}