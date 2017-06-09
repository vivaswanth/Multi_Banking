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
            DisplayRecord1();
            DisplayRecord2();
    	}
    	else
    	{
    		Session.Clear();
    		Response.Redirect("~//Default.aspx");
    	}
    	
    }
    protected void Search(object sender, EventArgs e)
    {
        this.DisplayRecord1();
    }

    public DataTable DisplayRecord1()  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from ClientBankDetails where UserName='%"+Session["name"]+"%' or AccountNum like '%"+txtSearch.Text+"%'", con);  
        DataTable Dt1 = new DataTable();  
        Adp1.Fill(Dt1);
        grid1.DataSource = Dt1;  
        grid1.DataBind();  
        return Dt1;  
    }

    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        grid1.PageIndex = e.NewPageIndex;
        grid1.DataBind();
    }

    public DataTable DisplayRecord2()  
    {  
        SqlDataAdapter Adp2 = new SqlDataAdapter("Select * from ClientTransactions where UserName='%"+Session["name"]+"%'", con);  
        DataTable Dt2 = new DataTable();  
        Adp2.Fill(Dt2);
        grid2.DataSource = Dt2;  
        grid2.DataBind();  
        return Dt2;  
    }


}