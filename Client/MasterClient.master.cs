using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Web.Security;


public partial class Client_MasterClient : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	user1.Text = "  Welcome " + Session["name"].ToString() + "!";
        SqlCommand cmd = new SqlCommand("select * from ClientProfile where UserName = '"+ Session["name"]+"'", con);
        using(SqlDataReader reader = cmd.ExecuteReader())
        {
            if(reader.Read())
            {          
                FirstName.Text = reader.GetString(0);
                Proname.Text = reader.GetString(0).Substring(0,1);
                LastName.Text = reader.GetString(1);
                Email.Text = reader.GetString(7).Trim();
            }
        }

        SqlCommand cmd1 = new SqlCommand("select count(Destination) from Query where Destination = '"+ Session["name"]+"'", con);
        using(SqlDataReader reader1 = cmd1.ExecuteReader())
        {
            if(reader1.Read())
            {          
                notify.Text = reader1.GetValue(0).ToString();
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
