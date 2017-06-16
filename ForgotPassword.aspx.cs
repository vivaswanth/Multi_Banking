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

public partial class ForgotPassword : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();
    }

    public void SendForgotEmail(object sender, EventArgs e)
    {
        string str2 = "Select Password from ClientProfile where UserName = '"+UserName.Text+"' and Email = '"+Email.Text+"' and MobileNum = '"+MobileNum.Text+"'";
        string password = null;
        SqlCommand cmd = new SqlCommand(str2,con);    
        using(SqlDataReader reader = cmd.ExecuteReader())
     	{
       		if(reader.Read())
       		{          
       			password = reader.GetString(0);
       		}
       	}

        
        using (MailMessage mm = new MailMessage("vvtrails27@gmail.com", Email.Text))
        {
            mm.Subject = "Forgot Password";
            string body = "Hello " + UserName.Text.Trim() + ", Your Password is : " + password;
            body += "<br /><br />Please click the following link to activate your account";
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