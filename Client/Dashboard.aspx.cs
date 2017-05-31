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


public partial class Client_Dashboard : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();

    	SqlCommand cmd = new SqlCommand("select * from ClientProfile", con);

    	using(SqlDataReader reader = cmd.ExecuteReader())
     	{
       		if(reader.Read())
       		{          
	         	FirstName.Text = reader.GetString(0);
	         	LastName.Text = reader.GetString(1);
	         	UserName.Text = reader.GetString(2);
	         	FatherName.Text = reader.GetString(3);
	         	MobileNum.Text = reader.GetDecimal(4).ToString();
	         	Email.Text = reader.GetString(5);
	         	Aadhaar.Text = reader.GetString(6);
	         	Address.Text = reader.GetString(8);

       		}
     	}   
    }

    protected void UpdateUser_Click_mobilenum(object sender, EventArgs e)
    {

		SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    	try
        {
        	con.Open();
            string str = "update ClientProfile set [MobileNum]='" +MobileNum2.Text+ "' where UserName='" +Convert.ToString(Session["name"])+ "'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            result1.Text = "successfully updated your info";
        }
        catch(Exception ee)
        {
            result1.Text = Session["name"].ToString();
        }
    }

    protected void UpdateUser_Click_Aadhaar(object sender, EventArgs e)
    {

    	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    	try
        {
            string str = "update ClientProfile set Aadhaar='" +Aadhaar2.Text+ "' where UserName='" +Session["name"].ToString()+ "' ";
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery().ToString();  
            result2.Text = "successfully updated your info";
        }
        catch(Exception eee)
        {
            result2.Text = "Failed";
        }
    }

    protected void UpdateUser_Click_Password(object sender, EventArgs e)
    {

    	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    	try
        {
            string str = "update ClientProfile set Password='" +Password2.Text+ "' where UserName='" +Session["name"].ToString()+ "' ";
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery().ToString();  
            result3.Text = "successfully updated your Password";
        }
        catch(Exception eee)
        {
            result3.Text = "Failed";
        }
    }
}