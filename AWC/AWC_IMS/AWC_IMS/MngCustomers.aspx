<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MngCustomers.aspx.cs" Inherits="AWC_IMS.MngCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Manage Customers</h2>
    </div>
    <div class="grid_6">
        <p>Search by Customer ID or Name: </p><asp:TextBox ID="txtSearch" runat="server" CssClass="searchText"></asp:TextBox>
    </div>
    <div class="grid_6">
        <asp:Button ID="btnAdd" runat="server" CssClass="item" PostBackUrl="" Text="Add Customer" />
    </div>
    <div class="grid_12">
        <table id="large" class="tablesorter">
            <thead>
		        <tr>
                    <th class="radioColumn"></th>
                    <th>CustID</th>
			        <th>Name</th>
                    <th>Date Added</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
                    <td><input id="cus01" type="radio" /></td>
			        <td>01</td>
			        <td>Customer01</td>
			        <td>01/01/2001</td>
		        </tr>
		        <tr>
                    <td><input id="cus02" type="radio" /></td>
			        <td>02</td>
			        <td>Customer02</td>
			        <td>01/01/2001</td>
		        </tr>
		        <tr>
                    <td><input id="cus03" type="radio" /></td>
			        <td>03</td>
			        <td>Customer03</td>
			        <td>01/01/2001</td>
		        </tr>
		        <tr>
                    <td><input id="cus04" type="radio" /></td>
			        <td>04</td>
			        <td>Customer04</td>
			        <td>01/01/2001</td>
		        </tr>
	        </tbody>
        </table>
    </div>
    <div class="clear"></div>
    <div class="grid_12">
        <asp:Panel ID="formPanel" CssClass="formPanel" runat="server">
            <asp:Label ID="lblFormName" runat="server" Text="Edit Customer"></asp:Label>
            <br /><br />
            <div class="formControlColumnLeft">
                <asp:Label ID="lblCusName" CssClass="formLabel" runat="server" Text="Name:"></asp:Label>
                <br />
                <asp:Label ID="lblCusAddress" CssClass="formLabel" runat="server" Text="Address:"></asp:Label>
                <br />
            </div>
            <div class="formControlColumnRight">
                <asp:TextBox ID="txtCusName" CssClass="formInput" runat="server">Enter name...</asp:TextBox>
                <asp:TextBox ID="txtCusAddress" CssClass="formInput" runat="server" Width="275px">Enter Address...</asp:TextBox>
                <br />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
