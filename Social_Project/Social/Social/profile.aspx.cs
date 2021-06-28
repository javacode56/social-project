using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace Social
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
            if (Session["user"] != null)
            {
                if (!IsPostBack)
                {

                    Profile();
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        void Profile()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Profile", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = ((List<string>)Session["user"])[0].ToString();
                SqlDataReader dr =cmd.ExecuteReader();
                if (dr.Read())
                {
                   
                    name.Text = dr["name"].ToString();
                    phone.Text = dr["phone"].ToString();
                    address.Text = dr["address"].ToString();
                    Email.Text = dr["user_id"].ToString();

                }
                else
                {

                }

            }
            catch (Exception k)
            {
                Response.Write(k);
            }
            finally
            {
                con.Close();
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("profile_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = ((List<string>)Session["user"])[0].ToString();
                cmd.Parameters.AddWithValue("@phone", SqlDbType.NVarChar).Value =phone.Text;
                cmd.Parameters.AddWithValue("@add", SqlDbType.NVarChar).Value =address.Text;
                if ((int)cmd.ExecuteNonQuery() > 0)
                {
                    
                    Response.Write("<script>alert('Successfully update"+address.Text+"');</script>");
                }
            }
            catch
            { }
            finally
            { con.Close(); }
            Profile();
        }
    }
}