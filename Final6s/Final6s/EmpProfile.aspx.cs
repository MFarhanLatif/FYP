using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final6s
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpEmail"] != null)
            {

            }
            else
            {
                Response.Redirect("EmpRegistration.aspx");
            }

        }

      

        protected void LogoutEmp_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();




            Response.Redirect("EmpRegistration.aspx");

        }
    }
}