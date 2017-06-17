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

public partial class Admin_AdminNotifications : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	if(Session["name"] != null)
    	{
    		if(!IsPostBack)
    		{
    			con.Open();
    			DisplayRecord();
	    	}
	    }
	    else
    	{
    		Session.Clear();
    		Response.Redirect("~//Default.aspx");
    	}	
    }

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp = new SqlDataAdapter("select * from Query where Destination = 'Admin'", con);  
        DataTable Dt = new DataTable();  
        Adp.Fill(Dt);
        grid.DataSource = Dt;  
        grid.DataBind();  
        return Dt;  
    }
}