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
public partial class AdminPage : System.Web.UI.Page
{
    protected bool imageflag;
    protected string imname;
    protected string forumname;

    protected void Page_Load(object sender, EventArgs e)
    {

        String loginname = (String)Session["name"];


        if (loginname != "admin")
        {
            Response.RedirectPermanent("LogIn.aspx");
        }
        else
        {
            Button1.Visible = true;
            //roll.Text = ;
            Button2.Enabled = true;
            int a = Int32.Parse(Session["roll"].ToString());
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                con.Open();
                SqlCommand comm = new SqlCommand("SELECT [email],[password],[name] from [HACK] where roll = " + "'" + a + "'", con);
                SqlDataReader reader = comm.ExecuteReader();
                reader.Read();
                Name.Text = reader["name"].ToString();
                con.Close();
                reader.Close();

                con.Open();
                comm = new SqlCommand("SELECT [imgname] from [image] where roll = " + "'" + a + "' ORDER BY [Id] DESC", con);
                reader = comm.ExecuteReader();
                imageflag = reader.Read();
                if (imageflag == true)
                {
                    imname = reader["imgname"].ToString();
                    Image1.ImageUrl = "~/Robotics/" + imname;
                    Image1.Visible = true;
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
                notice.Text = reader["timedate"].ToString()+"\n"+"\n"+reader["notice"].ToString();
                ;
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
        Response.Redirect("HomePage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            string notice = TextArea1.InnerText.ToString();
            DateTime mydate = DateTime.Now;
            SqlCommand comm = new SqlCommand("INSERT INTO [noticetb] values('" + notice + "','" + mydate + "')", con);
            try
            {
                if (comm.ExecuteNonQuery() != 0)
                {
                    Message.Text = "Notice Updated";

                }
                else
                { Message.Text = "can't update"; }

                TextArea1.InnerText = "";
                con.Close();
            }
            catch (Exception ex)
            {

                Message.Text = "Exception occured";
            }
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string path = "N:\\ALL\\TodayHackSite\\HACKsite\\File\\";
        FileInfo file = new FileInfo(path);
        if (TextArea1.InnerText != "")
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
            {
                con.Open();
                DateTime mydate = DateTime.Now;
                int rOLL = Int32.Parse(Session["roll"].ToString());
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
                SqlCommand comm = new SqlCommand("INSERT INTO project values('" + Name.Text + "','" + FileUpload3.FileName + "','" + FileUpload2.FileName + "','" + mydate + "','" + rOLL + "','" + imname + "')", con);
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