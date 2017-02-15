<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Student.aspx.cs" Inherits="Assignment12._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Students</h2>
<p>
        <asp:Label ID="Label1" runat="server" Text="Search: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
            Width="42px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Email" 
            DataSourceID="StudentsAccessData" PageSize="25" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowcommand="GridView1_RowCommand">
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
                <asp:ButtonField  HeaderText="Edit" ShowHeader="True" 
                    Text="Edit" CommandName="Edit"/>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="StudentsAccessData" runat="server" 
            DataFile="~/Universityx.mdb" 
            
            SelectCommand="SELECT * FROM [Students] ORDER BY [LastName]" 
            DeleteCommand="DELETE FROM [Students] WHERE Email = @original_Email" 
            InsertCommand="INSERT INTO [Students] ([LastName], [FirstName], [MiddleInitial], [Phone], [Email], [GPA]) VALUES (?, ?, ?, ?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            
            UpdateCommand="UPDATE [Students] SET [LastName] = ?, [FirstName] = ?, [MiddleInitial] = ?, [Phone] = ?, [GPA] = ? WHERE (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleInitial" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="GPA" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleInitial" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="GPA" Type="Double" />
                <asp:Parameter Name="original_Email" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </p>
    </asp:Content>
