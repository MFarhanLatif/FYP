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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Addfsp_Click(object sender, EventArgs e)
        {
            con.Open();
            String str = "insert into [dbo].[FrenchizeStore] (PName,PType,PQuantity,PCost,PPrice) values('" + FspName.Text + "','" + FspType.Text + "','" + FspQuantity.Text + "','" + FspCost.Text + "','" + FspPrice.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            try
            {


                cmd.ExecuteNonQuery();
               
                con.Close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}