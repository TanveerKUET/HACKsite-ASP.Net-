using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Robotics : System.Web.UI.Page
{
    protected int b1, b2, a;
    protected string[] id = new string[1000];
    protected string[] name = new string[1000];
    protected string[] time = new string[1000];
    protected string[] imagname = new string[1000];
    protected string[] post = new string[1000];
    protected string[] personimage = new string[1000];
    protected bool postflag;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            Con.Open();

            SqlCommand com = new SqlCommand("SELECT [Id] FROM artificialintelligence ORDER BY [Id] DESC", Con);
            SqlDataReader Reader = com.ExecuteReader();
            Reader.Read();
            //if(Reader.Read()==true)
            b2 = Int32.Parse(Reader["Id"].ToString());
            // Message.Text = Reader["Id"].ToString();
            Reader.Close();
            Con.Close();
            Con.Open();
            SqlCommand com1 = new SqlCommand("SELECT [Id] FROM artificialintelligence ORDER BY [Id] ASC", Con);
            Reader = com1.ExecuteReader();
            Reader.Read();
            //if (Reader.Read() == true)
            b1 = Int32.Parse(Reader["Id"].ToString());
            
            // Message.Text = Reader["Id"].ToString();
            Reader.Close();
            Con.Close();
            Con.Open();
            for (int i = b1; i <= b2; i++)
            {
                SqlCommand command1 = new SqlCommand("SELECT [Id],[name],[post],[timedate],[imgname],[roll],[personimgname] FROM artificialintelligence where [Id]='" + i + "'", Con);
                SqlDataReader reader1 = command1.ExecuteReader();
                postflag=reader1.Read();
                if(postflag==true)
                {
                    id[i] = reader1["Id"].ToString();
                    name[i] = reader1["name"].ToString();
                    time[i] = reader1["timedate"].ToString();
                    post[i] = reader1["post"].ToString();
                    imagname[i] = reader1["imgname"].ToString();
                    int myroll = Int32.Parse(reader1["roll"].ToString());
                    Con.Close();
                    reader1.Close();

                    Con.Open();
                    command1 = new SqlCommand("SELECT [imgname] FROM [image] where [roll]='" + myroll + "'", Con);
                    reader1 = command1.ExecuteReader();
                    postflag = reader1.Read();
                    personimage[i] = reader1["imgname"].ToString();
                    reader1.Close();
                    Con.Close();
                    Con.Open();
                }
                
            }
            Con.Close();
        }
    }
}