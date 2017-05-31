using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;

public partial class BankAdminLogin : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    }
    protected void ClickBankAdmin_Login(object sender, EventArgs e)
    {
    	SqlDataAdapter da = new SqlDataAdapter("select BAUserName,BAPassword from BankAdminProfile where BAUserName='" + BAUserName.Text + "' and BAPassword='"+BAPassword.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            BAresult.Text = "InvalidLoginId";
        }
        else if(dt.Rows.Count > 0)
        {
            Session["name"] = BAUserName.Text;
            Session["id"] = BAUserName.Text;
            Response.Redirect("~//Bank_Admin//BankAdminIndex.aspx");
            Session.RemoveAll();
        }
    }
}