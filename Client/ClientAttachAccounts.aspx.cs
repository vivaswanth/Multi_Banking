using System;
using System.Runtime.InteropServices;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Web.Security;

public partial class Client_ClientAttachAccounts : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
	string status1 = null;
	string status2 = null;
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

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from ClientAttachedAccounts where UserName='"+Session["name"]+"'", con);  
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

    protected void Attach_Accounts(object sender, EventArgs e)
    {
    	SqlDataAdapter da1 = new SqlDataAdapter("select * from ClientBankDetails where AccountNum = '"+ Account1.Text+"' and UserName='"+Session["name"]+"' and Status='Approved'", con);
    	SqlDataAdapter da2 = new SqlDataAdapter("select * from ClientBankDetails where AccountNum = '"+ Account2.Text+"' and UserName='"+TUserName.Text+"' and Status='Approved'", con);
    	DataTable dt1 = new DataTable();
        da1.Fill(dt1);
		if (dt1.Rows.Count == 0)
        {
            result.Text = "INVALID ACCOUNT NUMBER 1 ENTERED / NOT YET ACTIVATED";
        }
        else if(dt1.Rows.Count > 0)
        {
        	DataTable dt2 = new DataTable();
        	da2.Fill(dt2);
        	if (dt2.Rows.Count == 0)
        	{
            	result.Text = "INVALID ACCOUNT NUMBER 2 ENTERED / NOT YET ACTIVATED";
        	}
        	else if(dt2.Rows.Count > 0)
        	{
        		Guid guid = Guid.NewGuid();
				string str = guid.ToString();
		 		SqlCommand cmd = new SqlCommand("INSERT into ClientAttachedAccounts([UserName],[AccountNum],[AttachedAccountNum],[AttachedUserName],[Remarks],[Status],[AttachmentID]) VALUES('"+Session["name"]+"','"+Account1.Text+"','"+Account2.Text+"','"+TUserName.Text+"','"+Remarks.Text+"','Attached','"+str+"')", con);
		 		cmd.ExecuteNonQuery().ToString();  
		        result.Text="Attached Your Accounts Successfully, Now You can Make payments & Transactions between these two Accounts";
        	}
	 	}
    }
}