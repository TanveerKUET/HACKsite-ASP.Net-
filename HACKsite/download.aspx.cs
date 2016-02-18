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

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string FileName = Reader["projectfilename"].ToString();
        string FileName = "linefollowerrobot.zip";
        string path;//= Server.MapPath("~");
        //path += "\\ProjectFile\\" + FileName;
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