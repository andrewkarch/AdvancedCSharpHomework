using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AWC_IMS
{
    public partial class Catalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        private void LoadCart()
        {

        }


        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = txtSearch.Text;
        }
    }
}