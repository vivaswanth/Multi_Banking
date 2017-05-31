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


public partial class Client_ClientIndex : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	if(Session["name"] != null)
    	{
    		con.Open();
    		name.Text = Session["name"].ToString();
    	}
    	else
    	{
    		Session.Clear();
    		Response.Redirect("~//Default.aspx");
    	}
    	
    }
}