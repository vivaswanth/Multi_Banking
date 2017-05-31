using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void ClickPageAdmin_Login(object sender, EventArgs e)
    {
    	SqlDataAdapter da = new SqlDataAdapter("select PAUserName,PAPassword from PageAdminProfile where PAUserName='" + PAUserName.Text + "' and PAPassword='"+PAPassword.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            result.Text = "InvalidLoginId";
        }
        else if(dt.Rows.Count > 0)
        {
            Session["name"] = PAUserName.Text;
            Session["id"] = PAUserName.Text;
            Response.Redirect("~//Admin//AdminIndex.aspx");
            Session.RemoveAll();
        }
    }
}