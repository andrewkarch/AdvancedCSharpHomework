<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MngOrders.aspx.cs" Inherits="AWC_IMS.MngOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Manage Orders</h2>
    </div>
    <div class="grid_6">
        <p>Search by PO number or Customer number: </p><asp:TextBox ID="txtSearch" runat="server" CssClass="searchText"></asp:TextBox>
    </div>
    <div class="grid_6"></div>
    <div class="grid_12">
        <table id="large" class="tablesorter">
            <thead>
		        <tr>
                    <th class="radioColumn"></th>
                    <th>POID</th>
			        <th>PO Number</th>
                    <th>CustID</th>
			        <th>Order Date</th>
			        <th>Amount</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
                    <td><input id="ord01" type="radio" /></td>
			        <td>01</td>
			        <td>PO12345</td>
			        <td>01</td>
			        <td>01/01/2001</td>
			        <td>$63.00</td>
		        </tr>
		        <tr>
                    <td><input id="ord02" type="radio" /></td>
			        <td>02</td>
			        <td>PO12346</td>
			        <td>02</td>
			        <td>01/01/2001</td>
			        <td>$88.00</td>
		        </tr>
		        <tr>
                    <td><input id="ord03" type="radio" /></td>
			        <td>03</td>
			        <td>PO12347</td>
			        <td>03</td>
			        <td>01/01/2001</td>
			        <td>$80.00</td>
		        </tr>
		        <tr>
                    <td><input id="ord04" type="radio" /></td>
			        <td>04</td>
			        <td>PO12348</td>
			        <td>04</td>
			        <td>01/01/2001</td>
			        <td>$30.00</td>
		        </tr>
	        </tbody>
        </table>
    </div>
</asp:Content>
