using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class PasswordRecovery : System.Web.UI.Page
{
    protected bool mess;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hackdatabaseConnectionString1"].ToString()))
        {
            con.Open();
            if (TextBox1.Text != "" && ans.Text != "")
            {
                int a = Int32.Parse(TextBox1.Text);
                SqlCommand comm = new SqlCommand("SELECT [email],[password],[name],[verified],[securityques],[securityqans] from [HACK] where roll = " + "'" + a + "'", con); //select korlam databse theka ai name keu ase kina
                SqlDataReader reader = comm.ExecuteReader();
               mess = reader.Read();
                if(mess==false)
                {
                    pass.Text = "";
                    message.Text = "user doesn't exist";
                }
                else
                try
                {
                    string ques = reader["securityques"].ToString(); //query thka ja password ta pailam oita variable arakhlam
                    string answer = reader["securityqans"].ToString();
                    string passWord = reader["password"].ToString();
                    if (DropDownList1.Text == ques && answer == ans.Text)
                    {
                        pass.Text = "" + passWord;
                        pass.Enabled = false;
                        message.Text = "";
                    }
                    else
                    {
                        message.Text = "ans and question Doesn't match";
                        pass.Enabled = false;
                    }
                    
                }
                catch (Exception ex)
                { 
                
                }
            }
        }
    }
}