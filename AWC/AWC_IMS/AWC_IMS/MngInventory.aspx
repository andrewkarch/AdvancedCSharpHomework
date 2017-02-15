<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MngInventory.aspx.cs" Inherits="AWC_IMS.MngInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Manage Inventory</h2>
    </div>
    <div class="grid_6">
        <p>Search by Part ID, Name, or Description: </p><asp:TextBox ID="txtSearch" runat="server" CssClass="searchText"></asp:TextBox>
    </div>
    <div class="grid_6">
        <asp:Button ID="btnAdd" runat="server" CssClass="item" PostBackUrl="" Text="Add Part" />
    </div>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="AWC_IMS" runat="server"></asp:SqlDataSource>

 <!--   <div class="grid_12">
        <table id="large" class="tablesorter">
            <thead>
		        <tr>
                    <th class="radioColumn"></th>
                    <th>PartID</th>
			        <th>Name</th>
                    <th>Description</th>
			        <th>Price/Unit</th>
			        <th>In Stock</th>
			        <th>Date Added</th>
                    <th>Active?</th>
		        </tr>
	        </thead>
	        <tbody>
	        </tbody>
        </table>
    </div>
-->
</asp:Content>
