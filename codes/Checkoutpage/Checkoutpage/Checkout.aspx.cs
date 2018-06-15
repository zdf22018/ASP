using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Checkoutpage
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CbShipping_CheckedChanged(object sender, EventArgs e)
        {
            if (CbShipping.Checked)
            {
                
                TbShippingAddress.Text = TbAddress.Text;
                TbShippingCity.Text = TbCity.Text;
                TbShippingState.Text = TbState.Text;
                TbShippingZipCode.Text = TbZipCode.Text;
                TbShippingAddress.Enabled = false;
                TbShippingCity.Enabled = false;
                TbShippingState.Enabled = false;
                TbShippingZipCode.Enabled = false;
            }
            else
            {
                TbShippingAddress.Text = "";
                TbShippingCity.Text = "";
                TbShippingState.Text = "";
                TbShippingZipCode.Text = "";
                TbShippingAddress.Enabled = true;
                TbShippingCity.Enabled = true;
                TbShippingState.Enabled = true;
                TbShippingZipCode.Enabled = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TbEmail.Text = "";
            TbEmailRetype.Text = "";
            TbFirst.Text = "";
            TbLast.Text = "";
            TbPhone.Text = "";
            TbAddress.Text = "";
            TbCity.Text = "";
            TbState.Text = "";
            TbZipCode.Text = "";
            TbShippingAddress.Text = "";
            TbShippingCity.Text = "";
            TbShippingState.Text = "";
            TbShippingZipCode.Text = "";
            Label1.Text = "";
            if (CbShipping.Checked)
            {
                CbShipping.Checked = false;
                
                TbShippingAddress.Enabled = true;
                TbShippingCity.Enabled = true;
                TbShippingState.Enabled = true;
                TbShippingZipCode.Enabled = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!CbShipping.Checked)
                {
                    Label1.Text = "you have successfully checked out with below information " + "<br/>"+
                        "Email: " + TbEmail.Text + " First Name: " + TbFirst.Text + " Last Name: " + TbLast.Text +
                        " Phone Number " + TbPhone.Text +"<br/>"+ "Address: " + TbAddress.Text + " " + TbCity.Text + " " + TbState.Text + " " + TbZipCode.Text +"</br>"+
                        "Shipping Address: " + TbShippingAddress.Text + " " + TbShippingCity.Text + " " + TbShippingState.Text + " " + TbShippingZipCode.Text;
                }
                else
                {
                    Label1.Text = "you have successfully checked out with below information " + "<br/>" +
                        "Email: " + TbEmail.Text + " First Name: " + TbFirst.Text + " Last Name: " + TbLast.Text +
                        " Phone Number " + TbPhone.Text + "<br/>"+ "Address: " + TbAddress.Text + " " + TbCity.Text + " " + TbState.Text + " " + TbZipCode.Text + "<br/>" +
                    "Shipping Address is same as billing address";
                }
            }
        }
    }
}