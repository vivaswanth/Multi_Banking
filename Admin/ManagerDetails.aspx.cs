﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Web.Security;

public partial class Admin_ManagerDetails : System.Web.UI.Page
{

	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

    	con.Open();
    	string id= Request.QueryString["id"];
    	SqlCommand cmd1 = new SqlCommand("select * from BankAdminProfile where BAUserName = '"+id+"'", con);
    	SqlCommand cmd2 = new SqlCommand("select * from BankAdminProfile a INNER JOIN BankAdminBankDetails b on a.BAUserName = '"+id+"' and a.BAID = b.BAID", con);
    	using(SqlDataReader reader1 = cmd1.ExecuteReader())
     	{
       		if(reader1.Read())
       		{          
	         	BAFirstName.Text = reader1.GetString(0);
                BALastName.Text = reader1.GetString(1);
	         	BAUserName.Text = reader1.GetString(2);
	         	BAEmail.Text = reader1.GetString(6);
	         	BAMobileNum.Text = reader1.GetDecimal(12).ToString();
	         	BAID.Text = reader1.GetString(13);
	         	Status.Text = reader1.GetString(14);
       		}
     	}
     	using(SqlDataReader reader2 = cmd2.ExecuteReader())
     	{
       		if(reader2.Read())
       		{          
	         	BAID2.Text = reader2.GetString(15);
	         	BABankName.Text = reader2.GetString(17);
	         	BABankBranch.Text = reader2.GetString(18);
	         	BABankIFSC.Text = reader2.GetString(19);
	         	BARole.Text = reader2.GetString(20);
	   			BAStatus.Text = reader2.GetString(21);
       		}
     	}
    }

    protected void Approve_BankManager(object sender, EventArgs e)
    {
    	SqlCommand cmd1 = new SqlCommand("UPDATE BankAdminProfile set Status = 'Approved' where BAUserName='"+BAUserName.Text +"'", con);
    	SqlCommand cmd2 = new SqlCommand("UPDATE BankAdminBankDetails set BAStatus = 'Approved' where BAID='"+BAID.Text +"'", con);
    	cmd1.ExecuteNonQuery().ToString();
    	cmd2.ExecuteNonQuery().ToString();
    }

    protected void Decline_BankManager(object sender, EventArgs e)
    {
    	SqlCommand cmd1 = new SqlCommand("UPDATE BankAdminProfile set Status = 'Failed' where BAUserName='"+BAUserName.Text +"'", con);
    	SqlCommand cmd2 = new SqlCommand("UPDATE BankAdminBankDetails set BAStatus = 'Failed' where BAID='"+BAID.Text +"'", con);
    	cmd1.ExecuteNonQuery().ToString();
    	cmd2.ExecuteNonQuery().ToString();
    }

}