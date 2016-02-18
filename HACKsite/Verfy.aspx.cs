using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AdminPage : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {    
        if (Session["name"].ToString() != "admin")
        {
            Response.RedirectPermanent("LogIn.aspx");
        }
        else
        {
            Button1.Visible = true;
            //roll.Text = ;
            
            int a = Int32.Parse(Session["roll"].ToString());
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("SELECT [email],[password],[name] from [HACK] where roll = " + "'" + a + "'", con);
                SqlDataReader reader = comm.ExecuteReader();
                reader.Read();
                Name.Text = reader["name"].ToString();
            }
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["UserInfo"] != null)
        {
            HttpCookie newCookie = new HttpCookie("UserInfo");
            newCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(newCookie);
        }
        Session.Abandon();
        Response.Redirect("HomePage.aspx");
    }
    

}