using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
public partial class FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
       // string path = "I:\\WEb Project\\Metro\\FileStorage";
        string path = "D:\\Tanveer";
        FileInfo file = new FileInfo(path);
        if (!file.Exists)
        {
            String imgpath = "N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName;
            FileUpload1.SaveAs("N:\\ALL\\TodayHackSite\\HACKsite\\File\\" + FileUpload1.FileName);
            //FileUpload1.SaveAs("D:\\Tanveer\\" +FileUpload1.FileName);
            Image1.ImageUrl = "~/File/00338.JPG";
            Image1.Visible = true;
        }

    }
}