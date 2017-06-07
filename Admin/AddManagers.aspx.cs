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

public partial class Admin_AddManagers : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	DisplayRecord(); 
    	
    }

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp = new SqlDataAdapter("Select * from BankAdminProfile", con);  
        DataTable Dt = new DataTable();  
        Adp.Fill(Dt);  
        grid1.DataSource = Dt;  
        grid1.DataBind();  
        return Dt;  
    }

    protected void ViewClick_Redirect(object sender, EventArgs e)
	{
     	string Id = (sender as LinkButton).CommandArgument;
     	Response.Redirect("ManagerDetails.aspx?Id=" + Id);
	} 
}