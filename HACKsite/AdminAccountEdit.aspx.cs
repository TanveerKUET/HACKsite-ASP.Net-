﻿using System;
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
    bool imageflag;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Button1.Visible = false;       
        if (Session["User"] != "logged in")
        {
            Response.Redirect("LogIn.aspx");
        }
        else
        {
          Button1.Visible = true;
          string s = Session["roll"].ToString();
          int a = Int32.Parse(s);
          //Image1.ImageUrl = "~/File/00338.JPG";
          using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
          {
              con.Open();
              SqlCommand comm = new SqlCommand("SELECT [email],[password],[name],[forum] from [HACK] where roll = " + "'" + a + "'", con);
              SqlDataReader reader = comm.ExecuteReader();
              reader.Read();
              Name.Text =  reader["name"].ToString();
              DateTime mydate = DateTime.Now;
              roll.Text = Session["roll"].ToString();

              con.Close();
              reader.Close();

              con.Open();
              comm = new SqlCommand("SELECT [imgname] from [image] where roll = " + "'" + a + "' ORDER BY [Id] DESC", con);
              reader = comm.ExecuteReader();
             imageflag= reader.Read();
             if (imageflag== true)
             {
                 string imnae = reader["imgname"].ToString();
                 Image2.ImageUrl = "~/Robotics/" + imnae;
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
        Response.Redirect("HomePage.aspx");
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        string path = "N:\\ALL\\TodayHackSite\\HACKsite\\File\\";
        FileInfo file = new FileInfo(path);
        /*if(nametb.Text!="" && roll.Text!="" && emailtb.Text!="" && TextBox4.Text!="")
        {*/
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            DateTime mydate = DateTime.Now;
            int r = Int32.Parse(Session["roll"].ToString());
           /* SqlCommand comm = new SqlCommand("UPDATE  HACK set name='" + nametb.Text + "',email='" + emailtb.Text + "',department='"+dept.Text+"',forum='"+form.Text+"',password='" + passwordtb.Text + "' where roll='" + r + "'", con);
            try
            {
                if (comm.ExecuteNonQuery() != 0)
                {
                    con.Close();
                    message.Text = "success";
                    
                    if (message.Text == "success")
                    {
                        */
                  using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
                        {
                            
                            int id = Int32.Parse(Session["roll"].ToString());
                            
                            if (!file.Exists)
                            {
                                String p = Server.MapPath("~");
                                Con.Open();
                                String imgpath = "N:\\ALL\\TodayHackSite\\HACKsite\\Robotics\\" + FileUpload1.FileName;
                                //FileUpload1.SaveAs("N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName);
                                if (imageflag == true)
                                {
                                    SqlCommand Comm1 = new SqlCommand("UPDATE  image SET imgname='" + FileUpload1.FileName + "'where roll='" + id + "'", Con);
                                    if (Comm1.ExecuteNonQuery() != 0)
                                    {
                                        FileUpload1.SaveAs(p + "\\Robotics\\" + FileUpload1.FileName);
                                        Image2.ImageUrl = "~/Robotics/" + FileUpload1.FileName;
                                        Image2.Visible = true;
                                        Con.Close();
                                        Response.Redirect("Edit.aspx");
                                    }
                                    else
                                    {
                                        message.Text = "updatefailed";
                                    }
                                }
                                else
                                {
                                    SqlCommand Comm = new SqlCommand("INSERT INTO image values('" + FileUpload1.FileName + "','" + id + "')", Con);
                                    if (Comm.ExecuteNonQuery() != 0)
                                    {
                                        FileUpload1.SaveAs(p + "\\Robotics\\" + FileUpload1.FileName);
                                        Image2.ImageUrl = "~/Robotics/" + FileUpload1.FileName;
                                        Image2.Visible = true;
                                    }
                                    else
                                    {
                                        message.Text = "flagfalse";
                                    }

                                    Con.Close();
                                
                                }
                                

                            }

                            /*else
                            {
                                if (!file.Exists)
                                {
                                    String p = Server.MapPath("~");
                                    Con.Open();
                                    String imgpath = "N:\\ALL\\TodayHackSite\\HACKsite\\Robotics\\" + FileUpload1.FileName;
                                    //FileUpload1.SaveAs("N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName);
                                    SqlCommand Comm = new SqlCommand("UPDATE  image SET imgname'" + FileUpload1.FileName + "', where roll='" + id + "'", Con);
                                    if (Comm.ExecuteNonQuery() != 0)
                                    {
                                        FileUpload1.SaveAs(p + "\\Robotics\\" + FileUpload1.FileName);
                                        Image2.ImageUrl = "~/Robotics/" + FileUpload1.FileName;
                                        Image2.Visible = true;
                                    }
                                    else
                                    {
                                        message.Text = "flagtrue";
                                    }

                                    Con.Close();

                                }
                        
                            }*/



                        }
                    }

               /*  }
                else
                {
                    message.Text = "failed";
                }

           }
            catch (Exception ex)
            {
                
                //message.Text = "Exception";
            }*/
        }

        }
       
    
 
