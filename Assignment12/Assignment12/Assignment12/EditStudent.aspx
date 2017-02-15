<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="Assignment12.EditStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Email" DataSourceID="SelectedStudentDataSource">
        <Columns>
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleInitial" HeaderText="MiddleInitial" 
                SortExpression="MiddleInitial" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                SortExpression="Email" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="SelectedStudentDataSource" runat="server" 
        DataFile="~/Universityx.mdb" 
        SelectCommand="SELECT [LastName], [FirstName], [MiddleInitial], [Phone], [Email], [GPA] FROM [Students] WHERE ([Email] = ?)">
        <SelectParameters>
            <asp:CookieParameter CookieName="StudentSelectedCookie" DefaultValue="" 
                Name="Email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="View Courses" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />

</asp:Content>
