<%@ Page Title="Course" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Course.aspx.cs" Inherits="Assignment12._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        COURSES</h2>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="CourseID" 
            DataSourceID="CoursesDataSource">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DisciplineLabel" runat="server" 
                            Text='<%# Eval("Discipline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTitleLabel" runat="server" 
                            Text='<%# Eval("CourseTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNoLabel" runat="server" Text='<%# Eval("CourseNo") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="CourseIDLabel1" runat="server" Text='<%# Eval("CourseID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DisciplineTextBox" runat="server" 
                            Text='<%# Bind("Discipline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseTitleTextBox" runat="server" 
                            Text='<%# Bind("CourseTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseNoTextBox" runat="server" 
                            Text='<%# Bind("CourseNo") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseIDTextBox" runat="server" 
                            Text='<%# Bind("CourseID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DisciplineTextBox" runat="server" 
                            Text='<%# Bind("Discipline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseTitleTextBox" runat="server" 
                            Text='<%# Bind("CourseTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseNoTextBox" runat="server" 
                            Text='<%# Bind("CourseNo") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DisciplineLabel" runat="server" 
                            Text='<%# Eval("Discipline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTitleLabel" runat="server" 
                            Text='<%# Eval("CourseTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNoLabel" runat="server" Text='<%# Eval("CourseNo") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">
                                        CourseID</th>
                                    <th runat="server">
                                        Discipline</th>
                                    <th runat="server">
                                        CourseTitle</th>
                                    <th runat="server">
                                        CourseNo</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DisciplineLabel" runat="server" 
                            Text='<%# Eval("Discipline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTitleLabel" runat="server" 
                            Text='<%# Eval("CourseTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNoLabel" runat="server" Text='<%# Eval("CourseNo") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:AccessDataSource ID="CoursesDataSource" runat="server" 
            DataFile="~/Universityx.mdb" 
            SelectCommand="SELECT [CourseID], [Discipline], [CourseTitle], [CourseNo] FROM [Courses]">
        </asp:AccessDataSource>
    </p>
</asp:Content>
