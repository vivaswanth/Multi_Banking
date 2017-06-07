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


public partial class Admin_AddBanks : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	DisplayRecord1();
    	DisplayRecord2();
    }

    public DataTable DisplayRecord1()  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from BankAdminBankDetails where BAStatus = 'Approved'", con);  
        DataTable Dt1 = new DataTable();  
        Adp1.Fill(Dt1);
        grid1.DataSource = Dt1;  
        grid1.DataBind();  
        return Dt1;  
    }

    public DataTable DisplayRecord2()  
    {  
        SqlDataAdapter Adp2 = new SqlDataAdapter("Select * from BankAdminBankDetails", con);  
        DataTable Dt2 = new DataTable();  
        Adp2.Fill(Dt2);
        grid2.DataSource = Dt2;  
        grid2.DataBind();  
        return Dt2;  
    }

    protected void ViewClick_Redirect(object sender, EventArgs e)
	{
     	string Id = (sender as LinkButton).CommandArgument;
     	Response.Redirect("BankDetails.aspx?Id=" + Id);
	} 
}