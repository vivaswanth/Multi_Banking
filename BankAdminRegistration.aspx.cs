using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Net;
using System.Net.Mail;


public partial class BankAdminRegistration : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	result.Text = "Connected to database";
        con.Close();
    }

    protected void EnterBankAdmin_Details(object sender, EventArgs e)
    {
    	Connections conn = new Connections();
    	try
        {
            string str1 = "INSERT INTO BankAdminProfile([BAUserName], [BAName], [BAAadhaar], [BAEmail], [BAPassword], [BAMobileNum], [BAID], [Status]) VALUES('" + BAUserName.Text + "','" + BAName.Text + "','" + BAAadhaar.Text + "','" + BAEmail.Text + "','" + BAPassword.Text + "','" + BAMobileNum.Text + "','" + BAID.Text + "', 'Pending')";
            string str2 = "INSERT INTO BankAdminBankDetails([BAID], [BABankName], [BABankBranch], [BABankIFSC], [BARole], [BAStatus]) VALUES('" + BAID.Text + "','" + BABankName.Text + "','" + BABankBranch.Text + "','" + BABankIFSC.Text + "','" + BARole.Text + "', 'Pending')";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            SqlCommand cmd2 = new SqlCommand(str2, con);
            con.Open();
            cmd1.ExecuteNonQuery().ToString();
            cmd2.ExecuteNonQuery().ToString();
            SendActivationEmail(BAUserName.Text, BAID.Text);
            result.Text = "successfully Submitted, Your Details are sent for verification, Please go through your mail";
        }
        catch(Exception ee)
        {
            Response.Write(ee);
            result.Text = "Failed";
        }
    }

    private void SendActivationEmail(string UserName, string ID)
    {
        
        string ActivationCode = Guid.NewGuid().ToString();
        string str2 = "INSERT INTO BankAdminActivation(BAUserName, BAID ,ActivationCode) VALUES('"+UserName+"','"+ID+"' ,'"+ActivationCode+"')";

        SqlCommand cmd = new SqlCommand(str2,con);    
        cmd.ExecuteNonQuery().ToString();
        
        using (MailMessage mm = new MailMessage("vvtrails27@gmail.com", BAEmail.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + UserName.Trim() + ", Your activation ID is : " + ActivationCode;
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = 'http://localhost:51707/BankAdmin/BankAdminActivation.aspx?ActivationCode=ActivationCode'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            NetworkCredential NetworkCred = new NetworkCredential("vvtrails27@gmail.com", "temporary_27");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
    }

}