using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Final6s
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        

        protected void Adsignup_Click(object sender, EventArgs e)
        {
            con.Open();
            String str = "insert into [dbo].[AdmenRegistration] (AdName,AdCnic,AdEmail,AdPhone,AdPassword,AdAddress) values('" + AdName.Text + "','" + AdCnic.Text + "','" + AdEmail.Text + "','" + AdPhone.Text + "','" + AdPassword.Text + "','" + AdAddress.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminStore.aspx");
        }

        protected void AdEmail_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(AdEmail.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from AdmenRegistration where AdEmail=@AdEmail", con);

                cmd.Parameters.AddWithValue("@AdEmail", AdEmail.Text);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Label2.Text = "Email Already Exist";
                    Label2.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    Label2.Text = null;


                }
                con.Close();
            }
        }

        protected void AdPhone_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(AdPhone.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from AdmenRegistration where AdPhone=@AdPhone", con);

                cmd.Parameters.AddWithValue("@EmpPhone", AdPhone.Text);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Label3.Text = " Phone# is Already Exist";
                    Label3.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    Label3.Text = null;


                }
                con.Close();
            }
        }
    }
}