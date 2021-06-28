using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Social
{
    public partial class get_donation : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["socialString"].ConnectionString);
            if (!IsPostBack)
            { items_binder(); }
        }
        void items_binder()
        {
            try
            { con.Open();
                SqlCommand cmd = new SqlCommand("view_items", con);
                cmd.CommandType = CommandType.StoredProcedure;
                items_data.DataSource = cmd.ExecuteReader();
                items_data.DataBind();
            }
            catch (Exception K)
            {
                label1.Text = K.Message;
            }
        }

        protected void items_data_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
           
        }

        protected void items_data_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            Response.Cookies["itemid"].Value = e.CommandArgument.ToString();
            Response.Cookies["itemid"].Expires = DateTime.Now.AddDays(7);
            Response.Redirect("checkout.aspx");
        }
    }
}