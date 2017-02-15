<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="AWC_IMS.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Product Catalog</h2>
    </div>
    <div class="grid_12">
        <p>Search by ID, Name, or Description: </p>
        <asp:TextBox ID="txtSearch" 
            runat="server" CssClass="searchText" AutoPostBack="True" ontextchanged="txtSearch_TextChanged">
        </asp:TextBox> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
   
            
    
    <div class="grid_12">
        <table id="large" class="tablesorter">
            <thead>
		        <tr>
                    <th>ID</th>
			        <th>Name</th>
                    <th>Description</th>
			        <th>Price/Unit</th>
			        <th>In Stock</th>
			        <th>Add Quantity</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
			        <td>01</td>
			        <td>Widget01</td>
			        <td>The first widget</td>
			        <td>$4.00</td>
			        <td>63</td>
			        <td>
                        <input class="quantity" type="text" value="1"/>
				        <input class="addCart" type="button" value="Add to Cart"/>
                    </td>
		        </tr>
		        <tr>
			        <td>02</td>
			        <td>Widget02</td>
			        <td>The second widget</td>
			        <td>$20.00</td>
			        <td>88</td>
			        <td>
                        <input class="quantity" type="text" value="1"/>
				        <input class="addCart" type="button" value="Add to Cart"/>
                    </td>
		        </tr>
		        <tr>
			        <td>03</td>
			        <td>Widget03</td>
			        <td>The third widget</td>
			        <td>$8.00</td>
			        <td>80</td>
			        <td>
                        <input class="quantity" type="text" value="1"/>
				        <input class="addCart" type="button" value="Add to Cart"/>
                    </td>
		        </tr>
		        <tr>
			        <td>04</td>
			        <td>Widget04</td>
			        <td>The fourth widget</td>
			        <td>$53.00</td>
			        <td>30</td>
			        <td>
                        <input class="quantity" type="text" value="1"/>
				        <input class="addCart" type="button" value="Add to Cart"/>
                    </td>
		        </tr>
	        </tbody>
        </table>
    </div>
</asp:Content>
