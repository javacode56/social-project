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
    public partial class register : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
            
        }

        protected void Login_button_Click(object sender, EventArgs e)
        {
           // Response.Write("<script>alert('"+role.SelectedValue+"');</script>");
           try
            {
                con.Open();
                cmd = new SqlCommand("register", con);
                cmd.CommandType = CommandType.StoredProcedure;
                (cmd.Parameters.AddWithValue("@id", SqlDbType.NVarChar)).Value = email.Text;
                (cmd.Parameters.AddWithValue("@name", SqlDbType.NVarChar)).Value = name.Text;
                (cmd.Parameters.AddWithValue("@address", SqlDbType.NVarChar)).Value = Address.Text;
                (cmd.Parameters.AddWithValue("@phone", SqlDbType.NVarChar)).Value = phone.Text;
                (cmd.Parameters.AddWithValue("@pwd", SqlDbType.NVarChar)).Value = pass.Text;
                (cmd.Parameters.AddWithValue("@role", SqlDbType.NVarChar)).Value = role.SelectedValue;
                if ((int)cmd.ExecuteNonQuery()>=2)
                {
                    Response.Write("<script>alert('Sucessfully Register');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Fuck OFF');</script>");
                }

                

                
            }
            catch(Exception K)
            {
                Response.Write(K);
            }
            finally
            {
                con.Close();

            }
        }
    }
}