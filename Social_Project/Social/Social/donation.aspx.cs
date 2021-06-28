using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace Social
{
    public partial class donation : System.Web.UI.Page
    {
        static int item_id = 1,d_id=1;
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
             if (!IsPostBack)
             { 
            bind_category();
        }
        }
        void bind_category()
        {
            Response.Write("<script>alert('hello');</scipt>");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("view_category", con);
                cmd.CommandType = CommandType.StoredProcedure;
                Category.DataSource = cmd.ExecuteReader();
                Category.DataBind();

            }
            catch(Exception K)
            { Response.Write(K); }
            finally
            { con.Close(); }
        }
        protected void donate_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                if(checkFileType(FileUpload1.FileName))
                {
                    if (TextBox1.Text.Equals(""))
                    {
                        TextBox1.Text = "Secrete Donation";
                    }
                    else
                    {
                        try
                        {
                            String s = "/donation_image/" + FileUpload1.FileName;
                            con.Open();
                            SqlCommand cmd = new SqlCommand("Additems", con);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@item_id", SqlDbType.NVarChar).Value = "item" + item_id++;
                            cmd.Parameters.AddWithValue("@icat_id", SqlDbType.NVarChar).Value = Category.SelectedValue;
                            cmd.Parameters.AddWithValue("@item_name", SqlDbType.NVarChar).Value = TextBox2.Text;
                            cmd.Parameters.AddWithValue("@image", SqlDbType.NVarChar).Value = s;
                            cmd.Parameters.AddWithValue("@qty", SqlDbType.NVarChar).Value = TextBox3.Text;
                            cmd.Parameters.AddWithValue("@did", SqlDbType.NVarChar).Value = "d" + d_id++;
                            cmd.Parameters.AddWithValue("@reason", SqlDbType.NVarChar).Value = TextBox1.Text;
                            // cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = ((List < string > )Session["user"])[0].ToString();
                            cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = "Deepanshu@gmail.com";

                            if ((int)cmd.ExecuteNonQuery() >= 2)
                            {
                                FileUpload1.SaveAs(Server.MapPath("~/donation_image/") + FileUpload1.FileName);
                                Response.Write("<script>alert('Thanks for Donation');</script>");
                            }
                            else
                            {
                                //Response.Write("Fuck off");
                            }
                        }


                        catch (Exception K)
                        {
                            Response.Write(K);
                        }
                        finally
                        { con.Close(); }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Kindlly upload another file');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Kindlly Upload Item image');</script>");
            }
        }
        private Boolean checkFileType(String s)
        {


            switch (Path.GetExtension(s).ToLower())
            {
                case ".jpg":
                case ".png":
                case ".jpeg": return true;
                default: return false;
            }
        }

    }
}