using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final6s
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Adminlogin_Click(object sender, EventArgs e)
        {

            con.Open();
            string query = "SELECT [AdEmail],[AdPassword] FROM [dbo].[AdmenRegistration] where [AdEmail] ='" + UserName.Text + "' and [AdPassword]='" + Password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["AdEmail"] = UserName.Text;

                    Response.Redirect("AdmenRegistration.aspx");
                }
                else
                {
                    Label1.Text = "Email and password does not match";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}