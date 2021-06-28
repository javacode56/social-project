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
    public partial class donee_histroy : System.Web.UI.Page
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
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("donee_history", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uid", SqlDbType.NVarChar).Value = ((List<string>)Session["user"])[0].ToString();
                history.DataSource = cmd.ExecuteReader();
                history.DataBind();
            }
            catch (Exception K)
            { Label1.Text = K.Message; }
            finally
            { con.Close(); }
        }
    }
}