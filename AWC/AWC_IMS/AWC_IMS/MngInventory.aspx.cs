using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AWC_IMS
{
    public partial class MngInventory : System.Web.UI.Page
    {
        string connection = "Data Source = mysql10.000webhost.com; Initial Catalog = a6386384_awcims; User Id = a6386384_root; Password = cs483proj;";
        string qry;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataSource sds = new SqlDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            qry = "SELECT i.product_id, p.name, p.description, 1, 1, p.create_date, p.active " + 
                    "FROM inventory i, product p " + 
                    "WHERE i.product_id = p.product_id";
            try
            {
                sds = new SqlDataSource(connection, qry);
                GridView1.DataSource = sds;
                GridView1.DataBind();
            }
            catch (Exception)
            {
            }
        }
    }
}