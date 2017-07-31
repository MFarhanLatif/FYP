using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Final6s
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
           String  st = "select * from CustRegistration";
          SqlCommand  cmd = new SqlCommand(st,con);
        
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();

            SessionIdValue.Text = Convert.ToString(Session["CustEmail"]);
            SessionId.Text = reader["CustId"].ToString();
            con.Close();
            ///  SessionId.Text = Convert.ToString(Session["CustAddress"]);
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            con.Open();
            try {
                

                String str = "insert into [dbo].[Order] (VehicleType,VehicleNumber,ServiceType,Latitude,Longitude,Discreption,CustId,FoId) values('" + VehicleType.Text + "','" + VehicleNumber.Text + "','" + ServiceType.Text + "','" + Latituade.Text + "','" + Longituade.Text + "','"+Discreption.Text+ "', '"+SessionId.Text +"',12)";

            SqlCommand cmd = new SqlCommand(str, con);
            
            


                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
   throw ex;
            }
            con.Close();
    }
    }
}