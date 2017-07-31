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
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            Response.Write("The Page Loaded at: " + DateTime.Now.ToLongTimeString());


            if (Session["CustEmail"] != null)
            {
                DisplaySessionValue();
                
                
            }
            else
            {
                Response.Redirect("CustRegistration.aspx");
            }

            iamgebindGrid();


        }
        public void iamgebindGrid()
        {
            con.Open();
            String gs = "Select * from Images";
            SqlCommand gd = new SqlCommand(gs, con);
            SqlDataReader dr = gd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            /// gd.ExecuteNonQuery();
            


            con.Close();
        }

        protected void CustLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
          


            
            Response.Redirect("CustRegistration.aspx");
        }

        protected void Custorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

        private void DisplaySessionValue()
        {
            //con.Open();

          ///  String ci = "Select CustId from CustRegistration where CustEmail='@CustEmail'";
          //  SqlCommand cmd = new SqlCommand(ci, con);

            //SqlDataReader reader = cmd.ExecuteReader();
           
                if (Session["CustEmail"] != null)
                    /// lblSessionValue.Text = Convert.ToString(cmd.ExecuteNonQuery());

                    lblSessionValue.Text = Convert.ToString(Session["CustEmail"]);
                else
                    lblSessionValue.Text = "No Value has been stored in session";
                con.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            if(FileUpload1.HasFile)
            {
                int imagefilelength = FileUpload1.PostedFile.ContentLength;
                byte[] imageray = new byte[imagefilelength];
                HttpPostedFile image = FileUpload1.PostedFile;
                image.InputStream.Read(imageray, 0, imagefilelength);
                String str = "insert into Images(Image)values(@Image)";

                SqlCommand comd = new SqlCommand(str, con);
                    comd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imageray;
                comd.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "ImagesuccessfullyUpload";
                con.Close();



            }

        }
    }
}