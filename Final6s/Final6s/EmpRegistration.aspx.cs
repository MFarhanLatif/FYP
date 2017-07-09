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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Empsignup_Click(object sender, EventArgs e)
        {

            con.Open();
            String str = "insert into [dbo].[EmpRegistration] (EmpName,EmpCnic,EmpEmail,EmpPhone,EmpPassword,EmpAddress) values('" + EmpName.Text + "','" + EmpCnic.Text + "','" + EmpEmail.Text + "','" + EmpPhone.Text + "','" + EmpPassword.Text + "','" + EmpAddress.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "SELECT [CustEmail],[CustPassword] FROM [dbo].[EmpRegistration] where [EmpEmail] ='" + UserName.Text + "' and [EmpPassword]='" + Password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["EmpEmail"] = UserName.Text;

                    Response.Redirect("EmpProfile.aspx");
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