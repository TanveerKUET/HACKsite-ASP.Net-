using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;


public partial class AdminPage : System.Web.UI.Page
{
    protected int b1, b2, a;
    protected string[] id = new string[1000];
    protected string[] Name = new string[1000];
    protected string[] time = new string[1000];
    protected string[] imagname = new string[1000];
    protected string[] projecName = new string[1000];
    protected string[] personimage = new string[1000];
    protected bool postflag;

    protected void Page_Load(object sender, EventArgs e)
    {

        String loginstate = (String)Session["User"];
        if (loginstate == "logged in")
        {

            Button2.Visible = true;
        }
        else
        {
            Button2.Visible = false;
        }
        using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            Con.Open();

            SqlCommand com = new SqlCommand("SELECT [Id] FROM project ORDER BY [Id] DESC", Con);
            SqlDataReader Reader = com.ExecuteReader();
            Reader.Read();
            b2 = Int32.Parse(Reader["Id"].ToString());
            // Message.Text = Reader["Id"].ToString();
            Reader.Close();
            Con.Close();
            Con.Open();
            SqlCommand com1 = new SqlCommand("SELECT [Id] FROM project ORDER BY [Id] ASC", Con);
            Reader = com1.ExecuteReader();
            Reader.Read();
            b1 = Int32.Parse(Reader["Id"].ToString());

            // Message.Text = Reader["Id"].ToString();
            Reader.Close();
            Con.Close();
            Con.Open();
            for (int i = b1; i <= b2; i++)
            {
                SqlCommand command1 = new SqlCommand("SELECT [Id],[name],[projectname],[timedate],[imgname],[roll] FROM project where [Id]='" + i + "'", Con);
                SqlDataReader reader1 = command1.ExecuteReader();
                postflag = reader1.Read();
                if (postflag == true)
                {
                    id[i] = reader1["Id"].ToString();
                    Name[i] = reader1["name"].ToString();
                    time[i] = reader1["timedate"].ToString();
                    projecName[i] = reader1["projectname"].ToString();
                    imagname[i] = reader1["imgname"].ToString();
                    Con.Close();
                    reader1.Close();
                    Con.Open();
                }

            }
            Con.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int projectId = Int32.Parse(pid.Text);
        using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            Con.Open();

            SqlCommand com = new SqlCommand("SELECT [Id],[projectfilename] FROM project where [Id]='" + projectId + "'", Con);
            SqlDataReader Reader = com.ExecuteReader();
            Reader.Read();
            
                Label1.Text = Reader["projectfilename"].ToString();
            
                string FileName = Reader["projectfilename"].ToString();
                //string FileName = "linefollowerrobot.zip";
                string path ;//= Server.MapPath("~");
                path = "J:\\2-2\\HACKsite\\ProjectFile\\" + FileName;
           
                FileInfo file = new FileInfo(path);
                if (file.Exists)
                {
                    Response.Clear();
                    Response.ClearHeaders();
                    Response.ClearContent();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                    Response.AddHeader("Content-Length", file.Length.ToString());
                    Response.Flush();
                    Response.TransmitFile(file.FullName);
                    Response.End();
                }
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String name = (String)Session["name"];
        if (name == "admin")
        {
            Response.Redirect("AdminPage.aspx");
        }
        else
        {
            Response.Redirect("UserMainPage.aspx");
        }
    }
}