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

public partial class Admin_ManagerDetails : System.Web.UI.Page
{

	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

    	con.Open();
    	string id= Request.QueryString["id"];
    	SqlCommand cmd = new SqlCommand("select * from BankAdminProfile where BAUserName = '"+id+"'", con);

    	using(SqlDataReader reader = cmd.ExecuteReader())
     	{
       		if(reader.Read())
       		{          
	         	BAUserName.Text = reader.GetString(0);
	         	BAName.Text = reader.GetString(1);
	         	BAAadhaar.Text = reader.GetString(2);
	         	BAEmail.Text = reader.GetString(3);
	         	BAMobileNum.Text = reader.GetDecimal(5).ToString();
	         	BAID.Text = reader.GetString(6);
	         	Status.Text = reader.GetString(7);
       		}
     	}
    }

    protected void Approve_BankManager(object sender, EventArgs e)
    {
    	SqlCommand cmd = new SqlCommand("UPDATE BankAdminProfile set Status = 'Approved' where BAUserName='"+BAUserName.Text +"'", con);
    	cmd.ExecuteNonQuery().ToString();
    }

    protected void Decline_BankManager(object sender, EventArgs e)
    {
    	SqlCommand cmd = new SqlCommand("UPDATE BankAdminProfile set Status = 'Failed' where BAUserName='"+BAUserName.Text +"'", con);
    	cmd.ExecuteNonQuery().ToString();
    }

}