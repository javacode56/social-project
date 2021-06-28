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
    public partial class doner_history : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
            if (!IsPostBack)
            { history_binder(); }
        }
        void history_binder()
        { 
            try
            { con.Open();
                SqlCommand cmd = new SqlCommand("donation_history", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = ((List<string>)Session["user"])[0].ToString();
                history.DataSource = cmd.ExecuteReader();
                history.DataBind();
            }
            catch(Exception K)
            { Label1.Text = K.Message; }
            finally
            { con.Close(); }
        }

        protected void history_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void history_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void history_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update_items", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@qty",SqlDbType.NVarChar).Value= (history.Rows[e.RowIndex].FindControl("ed_qty") as TextBox).Text; ;
                cmd.Parameters.AddWithValue("@item_id", SqlDbType.NVarChar).Value= history.DataKeys[e.RowIndex].Value.ToString().Trim();
               if((int) cmd.ExecuteNonQuery()>0)                
                {

                    Response.Write("<script>alert('Successfully Update');</script>");
                }
              

            }
            catch (Exception K)
            {
               Label1.Text =( history.Rows[e.RowIndex].FindControl("ed_qty") as TextBox).Text;

            }
            finally
            {
                con.Close();
            }
            history.EditIndex = -1;
            history_binder();
        }


        protected void history_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update_items", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@qty", SqlDbType.NVarChar).Value = 0 + "";
                cmd.Parameters.AddWithValue("@item_id", SqlDbType.NVarChar).Value = history.DataKeys[e.RowIndex].Value.ToString().Trim();
                if ((int)cmd.ExecuteNonQuery() > 0)
                {

                    Response.Write("<script>alert('Successfully Update');</script>");
                }


            }
            catch (Exception K)
            {
                Label1.Text = (history.Rows[e.RowIndex].FindControl("ed_qty") as TextBox).Text;

            }
            finally
            {
                con.Close();
            }
            history.EditIndex = -1;
            history_binder();
        }

        protected void history_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            history.EditIndex = -1;
            history_binder();
        }
    }
}