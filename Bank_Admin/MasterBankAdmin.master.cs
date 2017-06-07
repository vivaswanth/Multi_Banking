using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Web.Security;


public partial class Bank_Admin_MasterBankAdmin : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	user.Text = "Welcome " + Session["name"].ToString() + "!";
    }

    public void logout(object sender, EventArgs e)
    {
    	FormsAuthentication.SignOut();
    	Session.Clear();
    	Response.Redirect("~//Default.aspx");
    }
}
