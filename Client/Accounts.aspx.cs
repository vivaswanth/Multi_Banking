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

public partial class Client_Accounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UpdateBank_Details(object sender, EventArgs e)
    {
    	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    	try
        {
            string str = "INSERT INTO BankDetails([UserName], [BankName], [BankBranch], [BankIFSC], [AccountNum], [AccountType], [NameOfAccHolder], [Status]) VALUES('" +Convert.ToString(Session["name"])+ "','" + BankName.Text + "','" + BankBranch.Text + "','" + BankIFSC.Text + "','" + AccountNum.Text + "','" + AccountType.Text + "','" + NameOfAccHolder.Text + "','Pending')";
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery().ToString();
            result.Text = "successfully Submitted your Details";
        }
        catch(Exception eee)
        {
            result.Text = "Failed";
        }
    }
}