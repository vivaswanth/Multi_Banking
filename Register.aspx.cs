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

public partial class Register : System.Web.UI.Page
{
	
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    	result.Text = "Connected to database";
        con.Close();
    }

    protected void CreateUser_Click(object sender, EventArgs e)
    {

        Connections conn = new Connections();
        try
        {
            string str = "INSERT INTO ClientProfile([FirstName], [LastName], [UserName], [Gender], [DOB], [FatherName], [MobileNum], [Email], [IDProof], [Password], [AddressLine], [City], [State], [PinCode], [TPassword]) VALUES('" + FirstName.Text + "','" + LastName.Text + "','" + UserName.Text + "','" +Sex.SelectedItem.Text + "', '"+ DOB.Text+"','"+FatherName.Text+"','" + MobileNum.Text + "','" + Email.Text + "','" + IDProof.SelectedItem.Text + "','" + Password.Text + "','" + AddressLine.Text + "','"+ City.Text+"','"+ State.SelectedItem.Text+"','"+ PinCode.Text+"','"+TPassword.Text+"')";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery().ToString();  
            SendActivationEmail(UserName.Text);
            string str1 = "INSERT INTO IDDetails([UserName],[IDProof],[IDNumber]) VALUES('"+UserName.Text+"','"+IDProof.SelectedItem.Text+"','"+IDNumber.Text+"')";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.ExecuteNonQuery().ToString();  
            result.Text = "successfully inserted";
        }
        catch(Exception ee)
        {
            Response.Write(ee);
            result.Text = "Failed";
        }
    }

    private void SendActivationEmail(string UserName)
    {
        
        string ActivationCode = Guid.NewGuid().ToString();
        string str2 = "INSERT INTO ClientActivation(UserName, ActivationCode) VALUES('"+UserName+"', '"+ActivationCode+"')";

        SqlCommand cmd = new SqlCommand(str2,con);    
        cmd.ExecuteNonQuery().ToString();
        
        using (MailMessage mm = new MailMessage("vvtrails27@gmail.com", Email.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + UserName.Trim() + ", Your activation ID is : " + ActivationCode;
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = 'http://localhost:51707/Client/ClientActivation.aspx?ActivationCode=ActivationCode'>Click here to activate your account.</a>";
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