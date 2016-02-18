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
        
        passcheck.Visible = false;
        Message.Visible = false;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        /*if (flag)
        {*/
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                con.Open();

                if (name.Text != "" && password.Text != "" && email.Text != "" && roll.Text != "" && securityQans.Text !="")
                {
                    int a = Int32.Parse(roll.Text);
                    
                    if (password.Text!=password0.Text)
                    {
                        passcheck.Visible = true;
                    }
                    else
                    {
                        SqlCommand command = new SqlCommand("INSERT INTO HACK values('" + a + "','" + name.Text + "','" + email.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + password.Text + "','n','"+DropDownList3.Text+"','"+securityQans.Text+"')", con);

                        /*try
                        {*/
                        if (name.Text == "admin" || name.Text == "Admin" || name.Text == "ADMIN")
                        {
                            Message.Visible = true;
                            Message.Text = "cant use this name";
                        }
                        else
                        {
                            if (command.ExecuteNonQuery() != 0)
                            {
                                Message.Visible = true;
                                Message.Text = "Your registration request is successfully sent.Please wait for verification";
                                Response.Redirect("LogIn.aspx");
                            }
                            else
                                Message.Visible = true;
                                Message.Text = "user exist!";
                            con.Close();
                        }
                            
                       /* }
                        catch (Exception ex)
                        {
                            Message.Visible = true;
                            Message.Text = "Exception occured";
                        }*/
                        
                    }
                    
                }
                else
                    Response.Redirect("Registration.aspx");

            }

       /* }
        else
        {
           // Response.Redirect("Registration.aspx");
            checkID.Visible = true;    
        
        }*/
        

    }
    protected void roll_TextChanged(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();

        string temp;

        SqlCommand comm = new SqlCommand("SELECT [roll] FROM [HACK]", conn);
        SqlDataReader reader = comm.ExecuteReader();

        while (reader.Read())
        {
            temp = (reader["roll"].ToString());

            if (temp == (roll.Text.ToString()))
            {
                Message.Visible = true;
                Message.Text = "User already exist...";
                break;
            }
            else
                Message.Visible = true;
                Message.Text = "UserId is available";

            temp = "";
        }
        //roll.Text = "";
        temp = "";
        reader.Close();
        conn.Close();
    }
}