using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Social
{
    public partial class Site : System.Web.UI.MasterPage
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            try
            {
                con.Open();
                /*
                 SqlCommand cmd = new SqlCommand("LoginTimeUpdater", Connections.con);
                 cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter property_name = parent.cmd.Parameters.Add("@id", SqlDbType.NVarChar);
                property_name.Value = ((List<string>)Session["user"])[0].ToString();
                if ((int)parent.cmd.ExecuteNonQuery() > 0)
                {
                    //Response.Write("<script>alert('Hello');</script>");//For Testing
                }*/

            }
            catch (Exception k)
            {
                Response.Write(k.StackTrace);
            }
            finally
            {
               // parent.Connection_refuse();

            }
            Session.Abandon();
            Response.Write("<script>history.go(-history.lenght);window.location='register.aspx';</script>");

        }
    }
}