<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderConfirm.aspx.cs" Inherits="AWC_IMS.OrderConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Order Confirmation</h2>
    </div>
    <div class="grid_12">
        <p>Your order has been placed. Thank you for your order!</p>
        <p>&nbsp;</p>
        <p>Please print this screen for your receipt</p>
    </div>
    <div class="grid_12">
                <asp:GridView ID="GridView1" runat="server" Width="934px">
                </asp:GridView>
    </div>
    <div class="grid_12 cartTotal">
        <h2>Total: $<asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label>
        </h2>
        <h2>PO#: PO12345</h2>
    </div>
</asp:Content>
