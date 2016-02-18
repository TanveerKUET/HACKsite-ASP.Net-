using System;
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

public partial class UserMainPage : System.Web.UI.Page
{
    protected bool imageflag;
    protected string imname;
    protected string forumname;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Button1.Visible = false;       
        if (Session["User"] != "logged in")
        {
            Response.Redirect("LogIn.aspx");
        }
        else
        {
            email.Visible = false;
            roll.Visible = false;

          Button1.Visible = true;
          roll.Text = Session["roll"].ToString();
          int a = Int32.Parse(roll.Text);
          //Image1.ImageUrl = "~/File/00338.JPG";
          using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
          {
              con.Open();
              SqlCommand comm = new SqlCommand("SELECT [email],[password],[name],[forum] from [HACK] where roll = " + "'" + a + "'", con);
              SqlDataReader reader = comm.ExecuteReader();
              reader.Read();
              Name.Text = reader["name"].ToString();
              DateTime mydate = DateTime.Now;
              roll.Text = mydate.ToString();
              email.Text = reader["email"].ToString();
              forum.Text = reader["forum"].ToString();
              forumname = forum.Text;
              con.Close();
              reader.Close();

              con.Open();
              comm = new SqlCommand("SELECT [imgname] from [image] where roll = " + "'" + a + "' ORDER BY [Id] DESC", con);
              reader = comm.ExecuteReader();
              imageflag = reader.Read();
              if (imageflag == true)
              {
                  imname = reader["imgname"].ToString();
                  Image2.ImageUrl = "~/Robotics/" + imname;
                  Image2.Visible = true;
                  con.Close();
                  reader.Close();
              }
              else
              {


              }
          }

          using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
          {
              con.Open();
              SqlCommand comm = new SqlCommand("SELECT [notice],[timedate] from [noticetb] ORDER BY [Id] DESC", con);
              SqlDataReader reader = comm.ExecuteReader();
              reader.Read();
              notice.Text = reader["notice"].ToString();
              date.Text = reader["timedate"].ToString();
              con.Close();
              reader.Close();
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
        Response.Redirect("LogIn.aspx");
        
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        string path = "N:\\ALL\\TodayHackSite\\HACKsite\\File\\";
        FileInfo file = new FileInfo(path);
        if(TextArea1.InnerText!="")
        {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            DateTime mydate = DateTime.Now;
            int rOLL= Int32.Parse(Session["roll"].ToString());
            string forumname = DropDownList1.Text;
            SqlCommand comm = new SqlCommand("INSERT INTO " + forumname + " values('" + Name.Text + "','" + TextArea1.InnerText + "','" + FileUpload1.FileName + "','" + mydate + "','" + rOLL + "','" + imname + "')", con);
            try
            {
                if (comm.ExecuteNonQuery() != 0)
                {
                    if (!file.Exists)
                    {
                        String p = Server.MapPath("~");

                        String imgpath = "N:\\ALL\\TodayHackSite\\HACKsite\\Robotics\\" + FileUpload1.FileName;
                        //FileUpload1.SaveAs("N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName);
                        FileUpload1.SaveAs(p + "\\Robotics\\" + FileUpload1.FileName);
                        TextArea1.InnerText = "";
                        Response.Redirect("Robotics.aspx");
                    }
                }
            }
            catch (Exception ex)
            { 
            
            }
        }

        }
       
    }
    protected void Button3_Click(object sender, System.EventArgs e)
    {
        string path = "N:\\ALL\\TodayHackSite\\HACKsite\\File\\";
        FileInfo file = new FileInfo(path);
        if (TextBox1.Text != "")
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                con.Open();
                DateTime mydate = DateTime.Now;
                int rOLL = Int32.Parse(Session["roll"].ToString());
                string forumname = DropDownList1.Text;
                SqlCommand comm = new SqlCommand("INSERT INTO project values('" + Name.Text + "','" +TextBox1.Text +"','" + FileUpload2.FileName + "','" + mydate + "','" + rOLL + "','" + FileUpload3.FileName + "')", con);
                try
                {
                    if (comm.ExecuteNonQuery() != 0)
                    {
                        if (!file.Exists)
                        {
                            String p = Server.MapPath("~");

                            String imgpath = "N:\\ALL\\TodayHackSite\\HACKsite\\ProjectFile\\" + FileUpload1.FileName;
                            //FileUpload1.SaveAs("N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName);
                            FileUpload3.SaveAs(p + "\\ProjectFile\\" + FileUpload3.FileName);
                            FileUpload2.SaveAs(p + "\\ProjectFile\\" + FileUpload2.FileName);
                            TextBox1.Text = "";
                            UploadMessage.Text = "project uploaded successfully";
                        }
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}