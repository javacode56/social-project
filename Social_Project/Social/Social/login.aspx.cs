using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Social
{
    public partial class login : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd;
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection = con;
                //Here I am definied command type is Stored Procedure.

                cmd.CommandType = CommandType.StoredProcedure;



                //Here  mentioned the Stored Procedure Name.

                cmd.CommandText = "Authenticate";

                //Here I fix the variable values to Stored Procedure Parameters. You can easily understand if you can see the Stored Procedure Code.

                cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.NVarChar)).Value = TextBox1.Text;

                cmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.NVarChar)).Value = TextBox2.Text;

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    List<string> obj = new List<string>();

                    obj.Add(dr["luser_id"].ToString());
                    obj.Add(dr["role"].ToString());
                    Session["user"]= obj;
                    Response.Redirect("profile.aspx");
                    Response.Write("<script>alert('succesfull')</script>");

                }
                else
                    Response.Write("<script>alert('invalid')</script>");

                cmd.Dispose();

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}