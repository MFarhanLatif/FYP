using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Final6s
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {
       
        SqlConnection con = new SqlConnection("Data Source=FARHAN\\SQLEXPRESS;Initial Catalog=s6final;Integrated Security=True");

        
        public void ProcessRequest(HttpContext context)
        {
            
          con.Open();

            String displayimgid = context.Request.QueryString["Id"].ToString();
            String str = "Select Id from Images where Id="+displayimgid;
           
            SqlCommand com = new SqlCommand(str, con);
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            /// context.Response.ContentType = "text/plain";
            ///context.Response.Write("Hello World");
            context.Response.BinaryWrite((Byte[])dr[0]);
         
            context.Response.End();
            con.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}