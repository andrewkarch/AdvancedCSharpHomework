<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Reservation Request
    </h2>
    <p>
        &nbsp;</p>
    <p>
        Date:
        <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    </p>
    <p>
        Number of Adults ($125.00): 
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged"  AutoPostBack="true">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
       Number of Children ($75.00):
        <asp:DropDownList ID="DropDownList2" runat="server" onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Class:
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Selected="True">First</asp:ListItem>
            <asp:ListItem>Coach</asp:ListItem>
            <asp:ListItem>Standing Room</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        Destination:  
        <asp:DropDownList ID="DestinationDropdown" runat="server">
            <asp:ListItem>Berlin</asp:ListItem>
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>Mars</asp:ListItem>
            <asp:ListItem>Washington</asp:ListItem>
            <asp:ListItem>Seattle</asp:ListItem>
            <asp:ListItem>Portland</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        Special Requests:
        <asp:TextBox ID="TextBox1" runat="server" Height="64px" Rows="5" Width="512px" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        Contact Information:</p>
    <p>
        Name:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:
        <asp:TextBox ID="Emailbox" runat="server" TextMode="Email"></asp:TextBox>
    </p>
    <p>
        Total: $<asp:Label ID="Label1" runat="server" Text="0.00"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
    </p>
</asp:Content>
