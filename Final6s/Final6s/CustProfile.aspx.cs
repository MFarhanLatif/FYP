using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Final6s
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustEmail"] != null)
            {

            }
            else
            {
                Response.Redirect("CustRegistration.aspx");
            }

        }

        protected void CustLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
          


            
            Response.Redirect("CustRegistration.aspx");
        }
    }
}