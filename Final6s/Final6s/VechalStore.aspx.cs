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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Addvsp_Click(object sender, EventArgs e)
        {
            con.Open();
            String str = "insert into [dbo].[VechalStore] (PName,PType,PQuantity,PCost,PPrice) values('" + VspName.Text + "','" + VspType.Text + "','" + VspQuantity.Text + "','" + VspCost.Text + "','" + VspPrice.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            try
            {


                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}