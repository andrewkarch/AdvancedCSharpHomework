using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment13Final
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShoutItemList shoutBox;
            if (Application["ShoutBox"] == null)
            {
                shoutBox = new ShoutItemList();
                Application.Add("ShoutBox", shoutBox);
            }
            else
            {
                shoutBox = (ShoutItemList)Application["ShoutBox"];
                Title.Text = shoutBox.Display();
            }
            if (ScriptManager1.IsInAsyncPostBack != true)
                UserNameTextBox.Focus();
        }

        protected void AddShoutButton_Click(object sender, EventArgs e)
        {
            ShoutItem shout = new ShoutItem();
            shout.UserName = UserNameTextBox.Text;
            shout.Comment = Shout.Text;
            shout.Timestamp = DateTime.Now;

            Application.Lock();
            ShoutItemList shoutBox = (ShoutItemList)Application["ShoutBox"];
            shoutBox.Add(shout);
            Application.UnLock();

            Title.Text = shoutBox.Display();
            Shout.Text = "";
            Shout.Focus();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {

                if (TextBox1.Text.ToString().Equals(row.Cells[0].Text.ToString()))
                    row.Visible = true;
                else
                    row.Visible = false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                row.Visible = true;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //MessageBox.Show(e.CommandName.ToString());
            if (e.CommandName == "Edit")
            {
                string r = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[4].Text.ToString();
                HttpCookie myCookie = new HttpCookie("StudentSelectedCookie");
                myCookie.Value = r;
                myCookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myCookie);
                Response.Write("<script>window.location.href = 'EditStudent.aspx';</script>");
            }
        }
    }
}