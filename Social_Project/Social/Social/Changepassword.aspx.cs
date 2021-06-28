using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Social
{
    public partial class Changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
            try
            {
                con.Open();

                SqlCommand fcmd = new SqlCommand("changepassword", con);
                fcmd.CommandType = CommandType.StoredProcedure;
                (fcmd.Parameters.AddWithValue("@pwd", SqlDbType.NVarChar)).Value = TextBox1.Text.ToString();

                (fcmd.Parameters.AddWithValue("@u_id", SqlDbType.NVarChar)).Value = ((List<string>)Session["user"])[0].ToString();



                //(fcmd.Parameters.AddWithValue("@time", SqlDbType.NVarChar)).Value = did.SelectedValue.ToString();







                int n = fcmd.ExecuteNonQuery();
                if (n > 0)
                {
                    Response.Write("<script>alert('Successfully Update');</script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
