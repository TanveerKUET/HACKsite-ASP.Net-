using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
   protected int b1,b2,a ;
   protected string[] id = new string[1000];
   protected string[] name = new string[1000];
   protected string[] time = new string[1000];
   protected string[] Q = new string[1000];
   protected string[] Rol = new string[1000];

   protected string[] id1 = new string[1000];
   protected string[] name1 = new string[1000];
   protected string[] time1 = new string[1000];
   protected string[] Q1 = new string[1000];
   protected string[] Rol1 = new string[1000];


    protected void Page_Load(object sender, EventArgs e)
    {
       
        Button3.Visible = false;
        if (Session["User"] != "logged in")
        {
            // Response.Redirect("LogIn.aspx");
            TextBox1.Visible = true;
            Label1.Visible = true;
        }
        else
        {
            TextBox1.Visible = false;
            Label1.Visible = false;
        } 

            using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                Con.Open();

                SqlCommand com = new SqlCommand("SELECT [Id] FROM ques ORDER BY [Id] DESC", Con);
                SqlDataReader Reader = com.ExecuteReader();
                Reader.Read();
                b2 = Int32.Parse(Reader["Id"].ToString());
                // Message.Text = Reader["Id"].ToString();
                Reader.Close();
                Con.Close();
                Con.Open();
                SqlCommand com1 = new SqlCommand("SELECT [Id] FROM ques ORDER BY [Id] ASC", Con);
                 Reader = com1.ExecuteReader();
                Reader.Read();
                b1 = Int32.Parse(Reader["Id"].ToString());
                // Message.Text = Reader["Id"].ToString();
                Reader.Close();
                Con.Close();
                Con.Open();
                for (int i = b1; i <= b2; i++)
                {
                    SqlCommand command1 = new SqlCommand("SELECT [Id],[name],[timedate],[question] FROM ques where [Id]='" + i + "'", Con);
                    SqlDataReader reader1 = command1.ExecuteReader();
                    reader1.Read();
               
                    id[i] = reader1["Id"].ToString();
                    name[i] = reader1["name"].ToString();
                    time[i] = reader1["timedate"].ToString();
                    Q[i] = reader1["question"].ToString();


                    reader1.Close();
                }
                Con.Close();
            }
            using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                Con.Open();

                SqlCommand com = new SqlCommand("SELECT [Id] FROM qans ORDER BY [Id] DESC", Con);
                SqlDataReader Reader = com.ExecuteReader();
                Reader.Read();
                a = Int32.Parse(Reader["Id"].ToString());
                // Message.Text = Reader["Id"].ToString();
                Reader.Close();
                Con.Close();
                Con.Open();

                for (int i = 1; i <= a; i++)
                {
                    SqlCommand command1 = new SqlCommand("SELECT [Id],[name],[timedate],[answer],[qno] FROM qans where [Id]='" + i + "'", Con);
                    SqlDataReader reader1 = command1.ExecuteReader();
                    reader1.Read();

                    id1[i] = reader1["qno"].ToString();
                    name1[i] = reader1["name"].ToString();
                    time1[i] = reader1["timedate"].ToString();
                    Q1[i] = reader1["answer"].ToString();


                    reader1.Close();
                }
            }

            /* using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
             {
                 con.Open();
                 for (int i = 1; i <= 3; i++)
                 {
                     SqlCommand command1 = new SqlCommand("SELECT [name],[timedate],[question],[roll] FROM question where [Id]='" + i + "'", con);
                     SqlDataReader reader1 = command1.ExecuteReader();
                     reader1.Read();
                     Name.Text = reader1["name"].ToString();
                     date.Text = reader1["timedate"].ToString();

                 }

                 
      }*/

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextArea1.InnerText != "")
        {

            using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                Con.Open();
                SqlCommand com = new SqlCommand("SELECT [Id] FROM ques ORDER BY [Id] DESC", Con);
                SqlDataReader Reader = com.ExecuteReader();
                Reader.Read();
                int id = Int32.Parse(Reader["Id"].ToString());
                Reader.Close();
                Con.Close();
                id++;
                /*
                int rol = Int32.Parse(TextBox2.Text);
           
                string Qstn = TextBox3.Text;
                */
                string name;
                if (Session["User"] != "logged in")
                {
                    name = TextBox1.Text;
                }
                else
                {
                    name = Session["name"].ToString();
                }
                
                DateTime mydate = DateTime.Now;
              // string Qstn = TextBox3.Text;
                string Qstn = TextArea1.InnerText;
                //int rol = Int32.Parse(Session["roll"].ToString());
                Con.Open();
                SqlCommand comm = new SqlCommand("INSERT INTO ques values('"+id+"','" + name + "','" + mydate + "','" + Qstn + "')", Con);
                try
                {
                    if (comm.ExecuteNonQuery() != 0)
                    {
                        Message.Text = "Message sent!";

                    }
                    else
                    { Message.Text = "Can't sent user is not exist"; }

                    Response.Redirect("Forum.aspx");
                    Con.Close();
                }
                catch (Exception ex)
                {

                    Message.Text = "Exception occured";
                }

            }
        }
        else {
            Response.Redirect("Forum.aspx");
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
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

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextArea1.InnerText != "" && TextBox4.Text != "")
        {

            

                using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
                {
                    Con.Open();
                    SqlCommand com = new SqlCommand("SELECT [Id] FROM qans ORDER BY [Id] DESC", Con);
                    SqlDataReader Reader = com.ExecuteReader();
                    Reader.Read();
                    int id = Int32.Parse(Reader["Id"].ToString());
                    Reader.Close();
                    Con.Close();
                    id++;
                    Con.Open();
                    string name = TextBox1.Text;
                    int qno = Int32.Parse(TextBox4.Text);
                    DateTime mydate = DateTime.Now;
                    string ans = TextArea1.InnerText;

                    SqlCommand comm = new SqlCommand("INSERT INTO qans values('"+id+"','" + name + "','" + mydate + "','" + ans + "','" + qno + "')", Con);

                    try
                    {
                        if (comm.ExecuteNonQuery() != 0)
                        {
                            Message.Text = "Message sent!";

                        }
                        else
                        { Message.Text = "Can't sent user is not exist"; }
                        Response.Redirect("Copy of forum.aspx");
                        Con.Close();
                    }
                    catch (Exception ex)
                    {

                        Message.Text = "Exception occured";
                    }
                }

            }
           
        
        else
        {
            Response.Redirect("forum.aspx");
        }
    }
}