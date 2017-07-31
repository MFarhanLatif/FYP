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
            string query = "SELECT * FROM [dbo].[EmpRegistration] where [EmpEmail] ='" + UserName.Text + "' and [EmpPassword]='" + Password.Text + "'";
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

        protected void EmpEmail_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(EmpEmail.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from EmpRegistration where EmpEmail=@EmpEmail", con);

                cmd.Parameters.AddWithValue("@EmpEmail", EmpEmail.Text);
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

        protected void EmpCnic_TextChanged(object sender, EventArgs e)
        {


            if (!string.IsNullOrEmpty(EmpCnic.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from EmpRegistration where EmpCnic=@EmpCnic", con);

                cmd.Parameters.AddWithValue("@EmpCnic", EmpCnic.Text);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Label0.Text = " Cnic can't use";
                    Label0.ForeColor = System.Drawing.Color.Red;

                }
                else
                {
                    Label0.Text = null;


                }
                con.Close();
            }

        }

        protected void EmpPhone_TextChanged(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(EmpPhone.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from EmpRegistration where EmpPhone=@EmpPhone", con);

                cmd.Parameters.AddWithValue("@EmpPhone", EmpPhone.Text);
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