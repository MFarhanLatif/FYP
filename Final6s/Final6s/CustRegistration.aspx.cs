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
    public partial class CustRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Custsignup_Click(object sender, EventArgs e)
        {
            con.Open();
            String str = "insert into [dbo].[CustRegistration] (CustName,CustCnic,CustEmail,CustPhone,CustPassword,CustAddress) values('" + CustName.Text + "','" + CustCnic.Text + "','" + CustEmail.Text + "','" + CustPhone.Text + "','" + CustPassword.Text + "','" + CustAddress.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();


        }

        protected void Login_Click(object sender, EventArgs e)
        {

            con.Open();
            string query = "SELECT [CustEmail],[CustPassword] FROM [dbo].[CustRegistration] where [CustEmail] ='" + UserName.Text + "' and [CustPassword]='" + Password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["CustEmail"] = UserName.Text;

                    Response.Redirect("CustProfile.aspx");
                }
                else
                {
                    Label1.Text = "Email and password does not match";
                }
                con.Close();
            }
            catch(Exception ex)
            {
                throw ex;
            }

            }
        }
    }
