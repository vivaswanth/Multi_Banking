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


public partial class Bank_Admin_MasterBankAdmin : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
        string branch = null;
    	con.Open();
    	user.Text = "  Welcome " + Session["name"].ToString() + "!";
        SqlCommand cmd = new SqlCommand("select * from BankAdminProfile where BAUserName = '"+ Session["name"]+"'", con);
        using(SqlDataReader reader = cmd.ExecuteReader())
        {
            if(reader.Read())
            {          
                FirstName.Text = reader.GetString(0);
                Proname.Text = reader.GetString(0).Substring(0,1);
                LastName.Text = reader.GetString(1);
                Email.Text = reader.GetString(6).Trim();
            }
        }

        SqlCommand cmd1 = new SqlCommand("select BABankBranch from BankAdminBankDetails where BAUserName = '"+Session["name"]+"'", con);
        using(SqlDataReader reader1 = cmd1.ExecuteReader())
        {
            if(reader1.Read())
            {          
                branch = reader1.GetString(0);
            }
        }
        SqlCommand cmd2 = new SqlCommand("select count(Destination) from Query where Destination = '"+branch+"'", con);
        using(SqlDataReader reader2 = cmd2.ExecuteReader())
        {
            if(reader2.Read())
            {          
                notify.Text = reader2.GetValue(0).ToString();
            }
        }

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();
    }

    public void logout(object sender, EventArgs e)
    {
    	FormsAuthentication.SignOut();
    	Session.Clear();
    	Response.Redirect("~//Default.aspx");
    }
}
