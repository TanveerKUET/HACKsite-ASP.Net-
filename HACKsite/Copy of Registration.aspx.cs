using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = "Check the checkbox";
        Label6.Visible = false;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        flag = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (flag)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                conn.Open();
                int a = Int32.Parse(roll.Text);
                SqlCommand command = new SqlCommand("Insert into HACK(roll,name,email,department,forum,password) VALUES('" + a + "','" + name.Text + "','" + email.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + password.Text + "')", conn);
                if (command.ExecuteNonQuery() != 0)
                {
                    Message.Text = "You registered successfully!";
                }
                else
                    Message.Text = "User exists already!";
                conn.Close();
            }



            /*  SqlCommand comm = new SqlCommand("Insert into HACK(roll,name,email,department,forum,password) VALUES('" + a + "','" + name.Text + "','" + email.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + password.Text + "')", conn);

             SqlDataReader reader = comm.ExecuteReader();
           
              Response.Redirect("LogIn.aspx");
              try
              {
                  reader.Close();
                  conn.Close();
                  Response.Redirect("Registration.aspx");
              }
              catch (Exception ex)
              {
                  Label6.Text = "Failed";
                  Label6.Visible = true;
              }
              */
        }
        else
        {
            Response.Redirect("Registration.aspx");
            Label6.Visible = true;          
        
        }
        

    }
}