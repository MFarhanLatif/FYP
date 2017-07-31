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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddAsp_Click(object sender, EventArgs e)
        {

            con.Open();
            String str = "insert into [dbo].[AdmenStore] (PName,PType,PQuantity,PCost,PPrice) values('" + AspName.Text + "','" + AspType.Text + "','" + AspQuantity.Text + "','" + AspCost.Text + "','" + AspPrice.Text + "')";
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

        protected void DeletAvsp_Click(object sender, EventArgs e)
        {
            con.Open();
            string q = "delete  from [dbo].[AdmenStore] where PId ='" + DPId.Text + "'";
            SqlCommand com = new SqlCommand(q, con);

            try
            {



                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}