using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Windows;
using System.Configuration;
using System.Web.Security;
using System.Text.RegularExpressions;
using System.Drawing;

public partial class Bank_Admin_BankAdminIndex : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");

	string Tempo = null;

    protected void Page_Load(object sender, EventArgs e)
    {
    	if (!IsPostBack)  
        {  
	    	if(Session["name"] != null)
	    	{
	    		con.Open();
	    		SqlCommand cmd = new SqlCommand("select BABankBranch from BankAdminBankDetails where BAUserName = '"+Session["name"]+"'", con);
	            using(SqlDataReader reader1 = cmd.ExecuteReader())
	     		{
	       			if(reader1.Read())
	       			{          
		         		Tempo = reader1.GetString(0);
		         	}
		        }            
	            DisplayRecord(Tempo); 
	            SqlCommand cmd1 = new SqlCommand("select count(UserName) as total from ClientBankDetails where BankBranch = '"+Tempo+"'", con);
		    	SqlCommand cmd2 = new SqlCommand("select count(UserName) as active from ClientBankDetails where Status = 'Approved' and BankBranch = '"+Tempo+"'", con);
		    	SqlCommand cmd3 = new SqlCommand("select count(UserName) as pending from ClientBankDetails where Status = 'Pending' and BankBranch = '"+Tempo+"'", con);
		    	using(SqlDataReader reader1 = cmd1.ExecuteReader())
		 		{
		   			if(reader1.Read())
		   			{          
		         		total.Text = reader1.GetValue(0).ToString();
		         	}
		        }
		        using(SqlDataReader reader2 = cmd2.ExecuteReader())
		 		{
		   			if(reader2.Read())
		   			{          
		         		active.Text = reader2.GetValue(0).ToString();
		         	}
		        }
		        using(SqlDataReader reader3 = cmd3.ExecuteReader())
		 		{
		   			if(reader3.Read())
		   			{          
		         		pending.Text = reader3.GetValue(0).ToString();
		         	}
		        }
	    	}
	    	else
	    	{
	    		Session.Clear();
	    		Response.Redirect("~//Default.aspx");
	    	}
	    }
    }

    protected void Search(object sender, EventArgs e)
    {
        this.DisplayRecord(Tempo);
    }

    public DataTable DisplayRecord(string tempo)  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from ClientBankDetails where UserName like '%"+txtSearch.Text+"%' and BankBranch = '"+tempo+"'", con);  
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