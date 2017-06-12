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
using System.Text.RegularExpressions;

public partial class Admin_AdminIndex : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	if(Session["name"] != null)
    	{
    		con.Open();
            DisplayRecord();
    	}
    	else
    	{
    		Session.Clear();
    		Response.Redirect("~//Default.aspx");
    	}
    }

    protected void Search(object sender, EventArgs e)
    {
        this.DisplayRecord();
    }

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from ClientProfile where UserName like '%"+txtSearch.Text+"%' or FirstName like '%"+txtSearch.Text+"%'", con);  
        DataTable Dt1 = new DataTable();  
        Adp1.Fill(Dt1);
        grid1.DataSource = Dt1;  
        grid1.DataBind();  
        return Dt1;  
    }

    protected void ViewClick_Redirect(object sender, EventArgs e)
    {
        string Id = (sender as LinkButton).CommandArgument;
        Response.Redirect("ViewClientDetails.aspx?Id=" + Id);
    } 

    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        grid1.PageIndex = e.NewPageIndex;
        grid1.DataBind();
    }
}