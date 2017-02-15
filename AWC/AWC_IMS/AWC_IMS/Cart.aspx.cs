using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections.Specialized;

namespace AWC_IMS
{
    public partial class Cart : System.Web.UI.Page
    {
        //Create Global Variables?

        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Calls the methods to add the cookie, and such
            //DELETE CREATE COOKIE BEFORE IMPLEMENTATION
            CreateCookie();
            LoadCartFromCookieToDataTable();
            ViewState["SortExpression"] = "Item ASC";
            AddDataToGridView();
            Total();
        }

        //Creates the cookie.
        //This is for testing purposes only 
        private void CreateCookie()
        {
            //CREATES A TEST COOKIE DELETE BEFORE FINAL IMPLEMENTATION**************************************************
            //This creates the cookie
            HttpCookie cartCookie = new HttpCookie("cartCookie");

            //This adds the cookie
            // Read the cookie information and display it.
            // Adds ID !, Name @, Price #, Stock $ , Quantity; to Cookie
            cartCookie.Values.Add("1", "01!Widget001@4.03#63$10");
            cartCookie.Values.Add("2", "012!Widget002@6.40#435$100");
            cartCookie.Values.Add("3", "01!Widget003@4.00#63$10");

            //Sets cookie Timeout
            cartCookie.Expires = DateTime.MinValue;
            Response.Cookies.Add(cartCookie);
            //**********************************************************************************************************
        }

        //Sets the label to the total price.
        private void Total()
        {
            double price = 0;
            int quant = 0;
            double total = 0;
            double quantPrice = 0;
            //gets the quantity and price of the 
            foreach (GridViewRow row in CartGridView.Rows)
            {
                price = Convert.ToDouble(row.Cells[4].Text);
                quant = Convert.ToInt32(row.Cells[3].Text);
                quantPrice = price * quant;
                total += quantPrice;
            }
            TotalLabel.Text = total.ToString();
        }

        //Populates a DataTable from the data in the cookie.
        private void LoadCartFromCookieToDataTable()
        {
            //Creates the dataTable (Cart) for data to be loaded in to.
            DataTable Cart = new DataTable();

            //Adds the columns to the DataTable
            Cart.Columns.Add("Item");
            Cart.Columns.Add("ItemName");
            Cart.Columns.Add("ItemID");
            Cart.Columns.Add("Quantity");
            Cart.Columns.Add("Price");

            //Makes the Column "Item" auto increment to count the items in the cart.
            Cart.Columns["Item"].AutoIncrement = true;
            Cart.Columns["Item"].AutoIncrementSeed = 1;
            Cart.Columns["Item"].AutoIncrementStep = 1;

            //Sets the ItemID as the primary Key for the DataTable
            DataColumn[] Primary = new DataColumn[1];
            Primary[0] = Cart.Columns["Item"];
            Cart.PrimaryKey = Primary;

            //Loads the Cart with data from cookie

            //Loads the cookie created by the Catalog
            HttpCookie cookie = Request.Cookies.Get("cartCookie");
            
            if (cookie != null)
            {
                NameValueCollection MyCookieValues = new NameValueCollection(cookie.Values);

                String[] MyKeyNames = MyCookieValues.AllKeys;
                int tot = 1;
                foreach (string KeyName in MyKeyNames)
                {

                    string number = tot.ToString();
                    string myValue = Request.Cookies.Get("cartCookie").Values.Get(number);
                    if(myValue != null)
                    {

                    string itemName, itemID, quantity, price;

                    itemName = myValue.Substring(myValue.IndexOf('!') + 1, (myValue.IndexOf('@') - myValue.IndexOf('!') - 1));

                    itemID = myValue.Substring(0, myValue.IndexOf('!'));

                    quantity = myValue.Substring(myValue.IndexOf('$')+1);

                    price = myValue.Substring(myValue.IndexOf('@') + 1, (myValue.IndexOf('#') - myValue.IndexOf('@') - 1));

                    
                    Cart.Rows.Add(null, itemName, itemID, quantity, price);
                    tot++;
                }
                }
            }
            

            else
            {
                Cart.Rows.Add(null, "Cart Empty", "", "", "");

            }
                ViewState["Cart"] = Cart;
        }

        private void AddDataToGridView()
        {
                // Get the DataTable from ViewState.
                DataTable Cart = (DataTable)ViewState["Cart"];

                // Convert the DataTable to DataView.
                DataView CartDataView = new DataView(Cart);


                CartDataView.Sort = ViewState["SortExpression"].ToString();

                CartGridView.DataSource = Cart;
                CartGridView.DataBind();
            
        }

        
        protected void GridView_RowDeleted(object sender, GridViewDeleteEventArgs e)
                {
                    
                }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OrderConfirm.aspx"); 
        }

        protected void btnConfirm_Click1(object sender, EventArgs e)
        {

        }
    }
}