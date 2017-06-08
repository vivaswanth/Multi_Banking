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


public partial class Admin_ViewClientDetails : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	string id= Request.QueryString["id"];
    	SqlCommand cmd1 = new SqlCommand("select * from ClientProfile where UserName = '"+id+"'", con);
    	
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
}