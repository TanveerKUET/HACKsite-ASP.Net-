using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserMainPage : System.Web.UI.Page
{
      
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Id.Visible = false;
        Button1.Visible = false;       
        if (Session["User"] != "logged in")
        {
            Response.Redirect("LogIn.aspx");
        }
        else
        {
            Button1.Visible = true;
          roll.Text = Session["roll"].ToString();
          int a = Int32.Parse(roll.Text);
          using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
          {
              con.Open();
              SqlCommand comm = new SqlCommand("SELECT [email],[password],[name] from [HACK] where roll = " + "'" + a + "'", con);
              SqlDataReader reader = comm.ExecuteReader();
              reader.Read();
              Name.Text = reader["name"].ToString();
              roll.Text = Session["roll"].ToString();
              email.Text = reader["email"].ToString();
          }
          using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
          {
              /*Con.Open();
              DateTime mydate = DateTime.Now;
              SqlCommand c = new SqlCommand("SELECT [Id] from [status] where [date] = '" + mydate + "'", Con);
              SqlDataReader R = c.ExecuteReader();
              R.Read();
              Id.Text = R["Id"].ToString();
              Con.Close();
              Displaying message here 
              Con.Open();
              SqlCommand comm = new SqlCommand("SELECT [from],[sms],[date] from [status] where [to] ='" + a + "'", Con);
              SqlDataReader Reader = comm.ExecuteReader();
              Reader.Read();
              From.Text = Reader["from"].ToString();
              datetime.Text = Reader["date"].ToString();
              sms.Text = Reader["sms"].ToString();
          }
        }*/
    }

}