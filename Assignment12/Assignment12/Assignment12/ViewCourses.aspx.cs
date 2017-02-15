using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.OleDb;

namespace Assignment12
{
    public partial class ViewCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {   
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                MessageBox.Show("Yes");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string PATH = System.IO.Directory.GetCurrentDirectory();
                OleDbConnection connect = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Request.PhysicalApplicationPath + "\\Universityx.mdb");
                OleDbCommand command = new OleDbCommand();
                command.Connection = connect;


                HttpCookie myCookie2 = new HttpCookie("StudentSelectedCookie");
                myCookie2 = Request.Cookies["StudentSelectedCookie"];
                string Student = myCookie2.Value.ToString();
                string course = TextBox1.Text.ToString();
                string grade = TextBox2.Text.ToString();
                try
                {
                    connect.Open();
                    command.CommandText = "INSERT INTO CoursesTaken VALUES ('" + Student + "','" + course + "','" + grade + "');";
                    command.ExecuteNonQuery();
                    connect.Close();
                }
                catch { MessageBox.Show("Connection Failed ! "); }
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string PATH = System.IO.Directory.GetCurrentDirectory();
                OleDbConnection connect = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Request.PhysicalApplicationPath + "\\Universityx.mdb");
                OleDbCommand command = new OleDbCommand();
                command.Connection = connect;


                HttpCookie myCookie2 = new HttpCookie("StudentSelectedCookie");
                myCookie2 = Request.Cookies["StudentSelectedCookie"];
                string Student = myCookie2.Value.ToString();
                string course = TextBox1.Text.ToString();
                string grade = TextBox2.Text.ToString();
                try
                {
                    connect.Open();
                    command.CommandText = "DELETE FROM CoursesTaken WHERE StudentID='" + Student + "' AND CourseID='" + course + "';";
                    command.ExecuteNonQuery();
                    connect.Close();
                }
                catch { MessageBox.Show("Connection Failed ! "); }
                Response.Redirect(Request.RawUrl);
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                string PATH = System.IO.Directory.GetCurrentDirectory();
                OleDbConnection connect = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Request.PhysicalApplicationPath + "\\Universityx.mdb");
                OleDbCommand command = new OleDbCommand();
                command.Connection = connect;


                HttpCookie myCookie2 = new HttpCookie("StudentSelectedCookie");
                myCookie2 = Request.Cookies["StudentSelectedCookie"];
                string Student = myCookie2.Value.ToString();
                string course = TextBox1.Text.ToString();
                string grade = TextBox2.Text.ToString();
                try
                {
                    connect.Open();
                    command.CommandText = "UPDATE CoursesTaken SET Grade='" + grade + "' WHERE StudentID='" + Student + "' AND CourseID='" + course + "';";
                    command.ExecuteNonQuery();
                    connect.Close();
                }
                catch { MessageBox.Show("Connection Failed ! "); }
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}