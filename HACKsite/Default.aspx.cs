using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Register_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            
            if (NameTB.Text != "" && passTB.Text != "" && emailTB.Text != "" && UserIDTB.Text!="")
            {
                int a = Int32.Parse(UserIDTB.Text);
                SqlCommand command = new SqlCommand("INSERT INTO HACK values('" + a + "','" + NameTB.Text + "','" + emailTB.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + passTB.Text + "')", con);
                if (command.ExecuteNonQuery() != 0)
                {
                    // Message.Text = "You registered successfully!";
                   Response.Redirect("LOGin2.aspx");
                }
                else
                    Message.Text = "User exists already!";
                con.Close();
            }
            else
                Response.Redirect("Default.aspx");
            
        }
    }
}