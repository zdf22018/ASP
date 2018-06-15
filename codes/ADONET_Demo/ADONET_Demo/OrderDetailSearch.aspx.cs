using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ADONET_Demo
{
    public partial class OrderDetailSearch : System.Web.UI.Page
    {
        private string ConString = ConfigurationManager.ConnectionStrings["NORTHWNDConnectionString_ADO"].ConnectionString;

       
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Ddlchoice.Items.Add("Customer");
                Ddlchoice.Items.Add("Shipper");
            }
        }

        protected void BtnQuery_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConString);
            string sql = "Select * from Orders where OrderID=" + TxtOrderId.Text;
            SqlCommand cmd = new SqlCommand(sql, con){
                con.Open();
                cmd.ExecuteReader();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Close();
                    DvOrder.DataSource = reader;
                    DvOrder.DataBind();
                    // get either customer or shipper
                    string customerId = DvOrder.Rows[1].Cells[1].Text;
                    string shipperId = DvOrder.Rows[6].Cells[1].Text;
                switch (Ddlchoice.SelectedValue)
                {
                    case "Customer":
                        string query = "Select * from Customers where CustomerID = " + customerId;
                        cmd = new SqlCommand(query, con);
                        reader = cmd.ExecuteReader();
                        reader.Read();
                        for(int i=0; i<reader.FieldCount; i++)
                        {
                            
                        }
                        break;
                    case "Shipper":
                        string querys = "Select * from Shippers where ShippVia = " + shipperId;
                        break;

                }
                
            }

            

        }
    }
