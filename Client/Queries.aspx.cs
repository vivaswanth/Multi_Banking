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

public partial class Client_Queries : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	if(Session["name"] != null)
    	{
    		if(!IsPostBack)
    		{
    			con.Open();
	            SqlCommand cmd = new SqlCommand("select * from ClientBankDetails a, BankAdminBankDetails b where a.UserName = '"+Session["name"]+"' and a.BankIFSC = b.BABankIFSC", con);
	            using (SqlDataReader dr = cmd.ExecuteReader())
	            {
	                if(dr.HasRows)
	                {
	                    Destination.DataSource = dr;
	                    Destination.DataTextField = "BABankBranch";
	                    Destination.DataValueField = "BABankBranch";
	                    Destination.DataBind();
	                    Destination.Items.Add(new ListItem("Admin", "0"));
	                }
	            }
                DisplayRecord();
    		}
    	}
    	else
    	{
    		Session.Clear();
    		Response.Redirect("~//Default.aspx");
    	}	
    }

    protected void Destination_SelectedIndexChanged(object sender, EventArgs e)
    {
    	result.Text = "Message will be sent to" + Destination.SelectedItem.Text;
    }

    protected void Send_Query(object sender, EventArgs e)
    {
    	con.Open();
 		SqlCommand cmd = new SqlCommand("INSERT into Query([UserName],[Destination],[Query],[Message]) VALUES('"+Session["name"]+"','"+Destination.SelectedItem.Text+"','"+Query.Text+"','"+Message.Text+"')", con);
 		cmd.ExecuteNonQuery().ToString();
    }

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp = new SqlDataAdapter("select * from Query where UserName = '"+Session["name"]+"' or Destination='"+Session["name"]+"'", con);  
        DataTable Dt = new DataTable();  
        Adp.Fill(Dt);
        grid.DataSource = Dt;  
        grid.DataBind();  
        return Dt;  
    }

}