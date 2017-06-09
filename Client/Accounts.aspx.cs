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
    SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con.Open();
            DisplayRecord();
            SqlCommand cmd = new SqlCommand("select * from BankAdminBankDetails where BAStatus = 'Approved'", con);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if(dr.HasRows)
                {
                    BankName.DataSource = dr;
                    BankName.DataTextField = "BABankName";
                    BankName.DataValueField = "BABankName";
                    BankName.DataBind();
                    BankName.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }
    }

    protected void Search(object sender, EventArgs e)
    {
        this.DisplayRecord();
    }

    public DataTable DisplayRecord()  
    {  
        SqlDataAdapter Adp1 = new SqlDataAdapter("Select * from ClientBankDetails where UserName='%"+Session["name"]+"%' or AccountNum like '%"+txtSearch.Text+"%'", con);  
        DataTable Dt1 = new DataTable();  
        Adp1.Fill(Dt1);
        grid1.DataSource = Dt1;  
        grid1.DataBind();  
        return Dt1;  
    }

    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        grid1.PageIndex = e.NewPageIndex;
        grid1.DataBind();
    }


    protected void BankName_SelectedIndexChanged(object sender, EventArgs e)
    {
        BankBranch.Items.Clear();
        BankBranch.Items.Add(new ListItem("--Select Branch and city--", ""));
        BankIFSC.Items.Clear();
        BankIFSC.Items.Add(new ListItem("--Select IFSC Code--", ""));   
     
        BankBranch.AppendDataBoundItems = true;
        SqlCommand cmd = new SqlCommand("select * from BankAdminBankDetails where BAStatus = 'Approved'", con);   
        try
        {
            con.Open();
            BankBranch.DataSource = cmd.ExecuteReader();
            BankBranch.DataTextField = "BABankBranch";
            BankBranch.DataValueField = "BABankBranch";
            BankBranch.DataBind();
            if (BankBranch.Items.Count > 1)
            {
                BankBranch.Enabled = true;
            }
            else
            {
                BankBranch.Enabled = false;
                BankIFSC.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void BankBranch_SelectedIndexChanged(object sender, EventArgs e)
    {
        BankIFSC.Items.Clear();
        BankIFSC.Items.Add(new ListItem("--Select Branch and City--", ""));
        BankIFSC.AppendDataBoundItems = true;
        SqlCommand cmd = new SqlCommand("select * from BankAdminBankDetails where BAStatus = 'Approved'", con);   
        try
        {
            con.Open();
            BankIFSC.DataSource = cmd.ExecuteReader();
            BankIFSC.DataTextField = "BABankIFSC";
            BankIFSC.DataValueField = "BABankIFSC";
            BankIFSC.DataBind();
            if (BankIFSC.Items.Count > 1)
            {
                BankIFSC.Enabled = true;
            }
            else
            {
                BankIFSC.Enabled = false;
            }
         
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void BankIFSC_SelectedIndexChanged(object sender, EventArgs e)
    {
        Results.Text = "You Selected " +
                          BankName.SelectedItem.Text + " -----> " +
                          BankBranch.SelectedItem.Text + " -----> " +
                          BankIFSC.SelectedItem.Text;
    }

    protected void UpdateBank_Details(object sender, EventArgs e)
    {
    	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    	try
        {
            string str = "INSERT INTO ClientBankDetails([UserName], [BankName], [BankBranch], [BankIFSC], [AccountNum], [AccountType], [NameOfAccHolder], [Status]) VALUES('" +Convert.ToString(Session["name"])+ "','" + BankName.SelectedItem.Text + "','" + BankBranch.SelectedItem.Text + "','" + BankIFSC.SelectedItem.Text + "','" + AccountNum.Text + "','" + AccountType.Text + "','" + NameOfAccHolder.Text + "','Pending')";
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery().ToString();
            result.Text = "successfully Submitted your Details";
        }
        catch(Exception eee)
        {
            throw eee;
            result.Text = "Failed / check your account number";
        }
    }
}