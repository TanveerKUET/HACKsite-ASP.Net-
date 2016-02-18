using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                int a = Int32.Parse(TextBox1.Text);
                SqlCommand comm = new SqlCommand("SELECT [email],[password],[name],[verified] from [HACK] where roll = " + "'" + a + "'", con); //select korlam databse theka ai name keu ase kina
                SqlDataReader reader = comm.ExecuteReader();
                reader.Read();

                try
                {
                    string password = reader["password"].ToString(); //query thka ja password ta pailam oita variable arakhlam
                    string mail = reader["email"].ToString();
                    string cmail = TextBox2.Text.ToString();
                    string Nm = reader["name"].ToString();
                    string pass2 = TextBox2.Text.ToString();
                    string verification = reader["verified"].ToString();

                    if (verification == "v")
                    {
                        if (password == pass2)   /*aibar milailam*/
                        {
                            //Label1.Text = "login";
                            if (RememberMeCheckBox.Checked)
                            {
                                HttpCookie MyCookie = new HttpCookie("UserInfo");
                                MyCookie["roll"] = TextBox1.Text;
                                MyCookie["name"] = Nm;
                                MyCookie["password"] = TextBox2.Text;
                                MyCookie.Expires = DateTime.Now.AddDays(7);
                                Response.Cookies.Add(MyCookie);
                            }

                            Session["User"] = "logged in";
                            Session["name"] = reader["name"].ToString();
                            Session["mail"] = reader["email"].ToString();
                            Session["roll"] = TextBox1.Text; //i store roll here to pass it to UserMainPage
                            Session["password"] = TextBox2.Text;
                            //Response.Redirect("ChooseProduct.aspx");
                            reader.Close();
                            con.Close();
                            if (Nm == "admin")
                            {
                                Response.RedirectPermanent("AdminPage.aspx");
                            }
                            else
                            {
                                //  name.Text = Session["name"].ToString();
                                //  email.Text = Session["mail"].ToString();
                                //  pword.Text = Session["password"].ToString();
                                Response.RedirectPermanent("UserMainPage.aspx");
                            }

                        }
                        else
                        {
                            Response.RedirectPermanent("LogIn.aspx");
                        }
                    }
                    else
                    {
                        message.Text = "you aren't verified yet.........";
                    }
                    
                }
                catch (Exception ex)
                {
                    //Label1.Text = "failed";
                }
                con.Close();
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();

        string temp;
        string verified;
        SqlCommand comm = new SqlCommand("SELECT [roll],[verified] FROM [HACK]", conn);
        SqlDataReader reader = comm.ExecuteReader();

        while (reader.Read())
        {
            temp = (reader["roll"].ToString());
            verified = (reader["verified"].ToString());
            if (temp == (TextBox1.Text.ToString()))
            {
                message.Visible = true;
                if(verified=="n")
                {
                    message.Text = "User is not verified yet";
                }
                if (verified == "v")
                {
                    message.Text = "User is being verified";
                }
                break;
            }
            else
                message.Visible = true;
                message.Text = "No account is created by this id";

            temp = "";
        }
        //roll.Text = "";
        temp = "";
        reader.Close();
        conn.Close();
    }
}