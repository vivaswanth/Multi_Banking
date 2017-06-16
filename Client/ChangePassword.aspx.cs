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

public partial class Client_ChangePassword : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {

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