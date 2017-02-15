using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                loadValues();
            Label1.Text = Convert.ToString((Convert.ToInt32(DropDownList1.SelectedItem.Value) * 125) + (Convert.ToInt32(DropDownList2.SelectedItem.Value) * 75));

        }

        protected void loadValues()
        {
            
            if (Request.Cookies["myCookieDate"] != null)
                DateTextBox.Text = Request.Cookies["myCookieDate"].Value;

            if (Request.Cookies["myCookieDrop1"] != null && Request.Cookies["myCookieDrop1"].Value != "")
                DropDownList1.SelectedIndex = Convert.ToInt32(Request.Cookies["myCookieDrop1"].Value);

            if (Request.Cookies["myCookieDrop2"] != null && Request.Cookies["myCookieDrop2"].Value != "")
                DropDownList2.SelectedIndex = Convert.ToInt32(Request.Cookies["myCookieDrop2"].Value);

            if (Request.Cookies["myCookieRadio"] != null && Request.Cookies["myCookieRadio"].Value != "")
                RadioButtonList1.SelectedIndex = Convert.ToInt32(Request.Cookies["myCookieRadio"].Value);

            if (Request.Cookies["myCookieDestination"] != null && Request.Cookies["myCookieDestination"].Value != "")
                DestinationDropdown.SelectedIndex = Convert.ToInt32(Request.Cookies["myCookieDestination"].Value);



            if (Request.Cookies["myCookieRequest"] != null && Request.Cookies["myCookieRequest"].Value != "")
                TextBox1.Text = Request.Cookies["myCookieRequest"].Value;

            if (Request.Cookies["myCookieName"] != null && Request.Cookies["myCookieName"].Value != "")
                TextBox2.Text = Request.Cookies["myCookieName"].Value;

            if (Request.Cookies["myCookieEmail"] != null && Request.Cookies["myCookieEmail"].Value != "")
                Emailbox.Text = Request.Cookies["myCookieEmail"].Value;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            DateTextBox.Text = Calendar1.SelectedDate.Date.ToShortDateString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string dateText = DateTextBox.Text;
            HttpCookie myCookieDate = new HttpCookie("myCookieDate");
            myCookieDate.Value = Calendar1.SelectedDate.Date.ToShortDateString();
            myCookieDate.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieDate);

            string Drop1 = DropDownList1.SelectedIndex.ToString();
            HttpCookie myCookieDrop1 = new HttpCookie("myCookieDrop1");
            myCookieDrop1.Value = Drop1;
            myCookieDrop1.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieDrop1);

            string Drop2 = DropDownList2.SelectedIndex.ToString();
            HttpCookie myCookieDrop2 = new HttpCookie("myCookieDrop2");
            myCookieDrop2.Value = Drop2;
            myCookieDrop2.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieDrop2);

            string Radio = RadioButtonList1.SelectedIndex.ToString();
            HttpCookie myCookieRadio = new HttpCookie("myCookieRadio");
            myCookieRadio.Value = Radio;
            myCookieRadio.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieRadio);

            string Destination = DestinationDropdown.SelectedIndex.ToString();
            HttpCookie myCookieDestination = new HttpCookie("myCookieDestination");
            myCookieDestination.Value = Destination;
            myCookieDestination.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieDestination);



            string SpecialRequest = TextBox1.Text;
            HttpCookie myCookieRequest = new HttpCookie("myCookieRequest");
            myCookieRequest.Value = SpecialRequest;
            myCookieRequest.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieRequest);

            string Name = TextBox2.Text;
            HttpCookie myCookieName = new HttpCookie("myCookieName");
            myCookieName.Value = Name;
            myCookieName.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieName);

            string Email = Emailbox.Text;
            HttpCookie myCookieEmail = new HttpCookie("myCookieEmail");
            myCookieEmail.Value = Email;
            myCookieEmail.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(myCookieEmail);



            Response.Redirect("~/Default.aspx", true);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx", true);
        }
    }
}
