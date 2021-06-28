using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Social
{
    public partial class category : System.Web.UI.Page
    {
        static int i = 0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("view_category", con);
                cmd.CommandType = CommandType.StoredProcedure;
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();


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

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                con.Open();
                i++;
                SqlCommand fcmd = new SqlCommand("add_category", con);
                fcmd.CommandType = CommandType.StoredProcedure;
                (fcmd.Parameters.AddWithValue("@id", SqlDbType.NVarChar)).Value = i.ToString();

                (fcmd.Parameters.AddWithValue("@name", SqlDbType.NVarChar)).Value = cname.Text.ToString();



                (fcmd.Parameters.AddWithValue("@time", SqlDbType.NVarChar)).Value = did.SelectedValue.ToString();







                int n = fcmd.ExecuteNonQuery();




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