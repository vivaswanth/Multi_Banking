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

public partial class Client_Transactions : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");


    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
      DisplayRecord2();
      DisplayRecord3();
    }

    protected void MakeTransfer(object sender, EventArgs e)
    {
    	SqlDataAdapter da = new SqlDataAdapter("select * from ClientAttachedAccounts where UserName ='"+Session["name"]+"' and AccountNum ='"+Account1.Text+"' and AttachedAccountNum ='"+Account2.Text+"' ", con);
    	DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            result.Text = "INVALID ACCOUNT NUMBERS ENTERED / NOT YET ACTIVATED";
        }
        else if(dt.Rows.Count > 0)
        {
        	string balance1=null;
        	SqlCommand cmd1 = new SqlCommand("SELECT balance from ClientBankDetails where AccountNum = '"+Account1.Text+"'", con);
        	using(SqlDataReader reader1 = cmd1.ExecuteReader())
     		{
       			if(reader1.Read())
       			{
       				balance1 = reader1.GetDecimal(0).ToString();
       			}
       		}
       		if(int.Parse(balance1) >= int.Parse(Amount.Text))
       		{
       			SqlCommand cmd2 = new SqlCommand("UPDATE ClientBankDetails set balance=balance-'"+Amount.Text+"' where UserName = '"+Session["name"]+"' and AccountNum ='"+Account1.Text+"'", con);
		    	SqlCommand cmd3 = new SqlCommand("UPDATE ClientBankDetails set balance=balance+'"+Amount.Text+"' where UserName = '"+TUserName.Text+"' and AccountNum ='"+Account2.Text+"'", con);
		    	cmd2.ExecuteNonQuery().ToString();
		    	cmd3.ExecuteNonQuery().ToString();
		    	SqlCommand cmd4 = new SqlCommand("INSERT into ClientTransactions([UserName],[AccountNum1],[AccountNum2],[TUserName],[Amount],[Remarks],[Status]) VALUES('"+Session["name"]+"','"+Account1.Text+"','"+Account2.Text+"','"+TUserName.Text+"','"+Amount.Text+"','"+Remarks.Text+"','Success')",con);
		    	cmd4.ExecuteNonQuery().ToString();
	            result.Text = "Transaction Done";	
       		}
       		else
       		{
       			result.Text = "Insufficient Balance in your account";
       		}
        }
    }

    public DataTable DisplayRecord2()  
    {  
        SqlDataAdapter Adp2 = new SqlDataAdapter("Select * from ClientTransactions where UserName='"+Session["name"]+"'", con);  
        DataTable Dt2 = new DataTable();  
        Adp2.Fill(Dt2);
        grid2.DataSource = Dt2;  
        grid2.DataBind();  
        return Dt2;  
    }

    public DataTable DisplayRecord3()  
    {  
        SqlDataAdapter Adp3 = new SqlDataAdapter("Select * from ClientTransactions where UserName='"+Session["name"]+"'", con);  
        DataTable Dt3 = new DataTable();  
        Adp3.Fill(Dt3);
        grid3.DataSource = Dt3;  
        grid3.DataBind();  
        return Dt3;  
    }

}