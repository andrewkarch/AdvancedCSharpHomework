using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment12
{
    public partial class EditStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   HttpCookie myCookie2 = new HttpCookie("StudentSelectedCookie");
            myCookie2 = Request.Cookies["StudentSelectedCookie"];
            //Label1.Text = myCookie2.Value.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href = 'Student.aspx';</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href = 'ViewCourses.aspx';</script>");
        }
    }
}