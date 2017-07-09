using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

using System.Web.Security;

using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Final6s
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }
        

        protected void AddFo_Click(object sender, EventArgs e)
        {
            conn.Open();
            String str = "insert into [dbo].[FrenchiseRegistration] (FoName,FoCnic,FoEmail,FoPhone,FoPassword,FoCity,FoAddress) values('" + FoName.Text + "','" + FoCnic.Text + "','" + FoEmail.Text + "','" + FoPhone.Text + "','" + FoPassword.Text + "','"+FoCity.Text+"','"+FoAddress.Text+"')";
            SqlCommand cmd = new SqlCommand(str, conn);
            try
            {


                cmd.ExecuteNonQuery();

                conn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}