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


public partial class Client_Dashboard : System.Web.UI.Page
{
	SqlConnection con = new SqlConnection("server=DESKTOP-30COJRN; Initial catalog=multibanking; Integrated Security=true;");
    protected void Page_Load(object sender, EventArgs e)
    {
    	con.Open();

    	SqlCommand cmd = new SqlCommand("select * from ClientProfile where UserName = '"+ Session["name"]+"'", con);

    	using(SqlDataReader reader = cmd.ExecuteReader())
     	{
       		if(reader.Read())
       		{          
	         	FirstName.Text = reader.GetString(0);
	         	LastName.Text = reader.GetString(1);
	         	UserName.Text = reader.GetString(2);
                Sex.Text = reader.GetString(3);
                DOB.Text = Convert.ToDateTime(reader["DOB"]).ToString("dd/MM/yyyy");
	         	FatherName.Text = reader.GetString(5);
	         	MobileNum.Text = reader.GetDecimal(6).ToString();
	         	Email.Text = reader.GetString(7);
	         	Address.Text = reader.GetString(10);
                City.Text = reader.GetString(11);
                State.Text = reader.GetString(12);
                PinCode.Text = reader.GetDecimal(13).ToString();

       		}
     	}   
    }


    
    protected void Upload(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Session["name"].ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("Assets/images/") + fileName);
        }
    }

   

}