using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; //this provides access to web.config

namespace Ado
{
    public partial class SupplierSearch : System.Web.UI.Page
    {
        
        private string connectionString = ConfigurationManager.ConnectionStrings["NORTHWNDConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(connectionString);
                try
                {
                    string sql = "Select * from Suppliers";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    con.Open();
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ListItem newItem = new ListItem();
                        newItem.Text = reader["SupplierID"]+". "+reader["CompanyName"];
                        newItem.Value = "";
                        ddlSupplier.Items.Add(newItem);

                    }


                }
                catch(Exception ex)
                {

                }
                finally
                {

                }
            }
        
        j
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                LbSuppliers.Items.Clear();
                string sql = "select * from suppliers where SupplierID=" + TxtSupplierId;

                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();

                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    LbSuppliers.Items.Add("ID: " + reader["SupplierID"]);
                    LbSuppliers.Items.Add("ID: " + reader["CompanyName"]);
                    LbSuppliers.Items.Add("ID: " + reader["Address"]);

                }
                else
                {
                    LbSuppliers.Text = "no record found";
                }
            }
            catch (Exception ex) {

            }
            finally
            {
                con.Close();
            }
        }

        protected void ddlSupplier_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                LbSuppliers.Items.Clear();
                string sql = "select * from suppliers where SupplierID=" + ddlSupplier.SelectedValue;

                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();

                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                DetailsView1.DataSource = reader;
                DetailsView1.DataBind();

                if (reader.Read())
                {
                    LbSuppliers.Items.Add("ID: " + reader["SupplierID"]);
                    LbSuppliers.Items.Add("ID: " + reader["CompanyName"]);
                    LbSuppliers.Items.Add("ID: " + reader["Address"]);

                }
                else
                {
                    LbSuppliers.Text = "no record found";
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }
    }
}