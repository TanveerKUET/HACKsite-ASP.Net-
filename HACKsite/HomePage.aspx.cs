using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    String loginname;
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button2.Visible = false;
        loginname = (String)Session["name"];
        String loginstate = (String)Session["User"];
        if (loginstate == "logged in")
        {
            Button1.Visible = true;
            Button2.Visible = true;
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

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (loginname == "admin")
        {
            Response.Redirect("AdminPage.aspx");

        }
        else
        {
            Response.Redirect("UserMainPage.aspx");
        }
       
    }
}