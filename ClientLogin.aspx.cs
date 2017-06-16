using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;


public partial class ClientLogin : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    	
    }

    public void login(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select UserName,Password from ClientProfile where UserName='" + UserName.Text + "' and Password='"+Password.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            result.Text = "InvalidLoginId";
        }
        else if(dt.Rows.Count > 0)
        {
            Session["name"] = UserName.Text;
            Session["id"] = UserName.Text;
            Response.Redirect("~//Client//ClientIndex.aspx");
        }
    }

    public void ForgotPassword(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
}