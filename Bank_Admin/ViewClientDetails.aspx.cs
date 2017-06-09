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


public partial class Bank_Admin_ViewClientDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	string id= Request.QueryString["id"];
    	string name = null;
    	
    	SqlCommand cmd2 = new SqlCommand("select * from ClientBankDetails where AccountNum = '"+id+"'", con);
    	using(SqlDataReader reader2 = cmd2.ExecuteReader())
     	{
       		if(reader2.Read())
       		{          
	         	UserName2.Text = reader2.GetString(0);
	         	name = reader2.GetString(0);
	         	BankName.Text = reader2.GetString(1);
	         	BankBranch.Text = reader2.GetString(2);
	         	BankIFSC.Text = reader2.GetString(3);
	         	AccountNum.Text = reader2.GetString(4);
	         	AccountType.Text = reader2.GetString(5);
	         	NameOfAccHolder.Text = reader2.GetString(6);
	         	Status2.Text = reader2.GetString(7);
	         	try
	         	{
	         		Balance.Text = reader2.GetDecimal(8).ToString();	
	         	}
	         	catch(Exception p)
	         	{
	         		Balance.Text = "To be decided";
	         	}
       		}
     	}
     	SqlCommand cmd1 = new SqlCommand("select * from ClientProfile where UserName = '"+name+"'", con);
    	using(SqlDataReader reader1 = cmd1.ExecuteReader())
     	{
       		if(reader1.Read())
       		{          
	         	FirstName.Text = reader1.GetString(0);
	         	LastName.Text = reader1.GetString(1);
	         	UserName.Text = reader1.GetString(2);
	         	FatherName.Text = reader1.GetString(3);
	         	MobileNum.Text = reader1.GetDecimal(4).ToString();
	         	Email.Text = reader1.GetString(5);
	         	Aadhaar.Text = reader1.GetString(6);
	         	Address.Text = reader1.GetString(8);
       		}
     	}
     	
    }

    protected void Approve_ClientAccount(object sender, EventArgs e)
    {
    	string val = Balance_Amount.Text;
    	SqlCommand cmd = new SqlCommand("UPDATE ClientBankDetails set Status = 'Approved', Balance='"+val+"' where UserName='"+UserName.Text +"' and AccountNum = '"+AccountNum.Text+"'", con);
    	cmd.ExecuteNonQuery().ToString();
    }

    protected void Decline_ClientAccount(object sender, EventArgs e)
    {
    	SqlCommand cmd = new SqlCommand("UPDATE ClientBankDetails set Status = 'Failed' where BAUserName='"+UserName.Text +"'", con);
    	cmd.ExecuteNonQuery().ToString();
    }
}