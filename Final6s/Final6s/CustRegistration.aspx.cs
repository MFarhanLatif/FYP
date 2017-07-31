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
            string query = "SELECT * FROM [dbo].[CustRegistration] where [CustEmail] ='" + UserName.Text + "' and [CustPassword]='" + Password.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["CustEmail"] = UserName.Text;
                   
                   
                   //// Session["CustId"] = Convert.ToString("@CustId");
                    





                    Response.Redirect("CustProfile.aspx",true);
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

        protected void CustEmail_TextChanged(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(CustEmail.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from CustRegistration where CustEmail=@CustEmail", con);

                cmd.Parameters.AddWithValue("@CustEmail", CustEmail.Text);
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

        protected void CustCnic_TextChanged(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(CustCnic.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from CustRegistration where CustCnic=@CustCnic", con);

                cmd.Parameters.AddWithValue("@CustCnic", CustCnic.Text);
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

        protected void CustPhone_TextChanged(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(CustPhone.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from CustRegistration where CustPhone=@CustPhone", con);

                cmd.Parameters.AddWithValue("@CustPhone", CustPhone.Text);
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
