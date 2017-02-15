<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCourses.aspx.cs" Inherits="Assignment12.ViewCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CourseID,StudentID" 
        DataSourceID="CoursesDataSource" 
        onselectedindexchanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <tr style="background-color:#FAFAD2; color: #284775;">
                <td>
                    <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                </td>
                <td>
                    <asp:Label ID="GradeLabel" runat="server" Text='<%# Eval("Grade") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#FFCC66; color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="CourseIDLabel1" runat="server" 
                        Text='<%# Eval("CourseID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GradeTextBox" runat="server" Text='<%# Bind("Grade") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIDLabel1" runat="server" 
                        Text='<%# Eval("StudentID") %>' />
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
                    <asp:TextBox ID="GradeTextBox" runat="server" 
                        Text='<%# Bind("Grade") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StudentIDTextBox" runat="server" 
                        Text='<%# Bind("StudentID") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#FFFBD6; color: #333333;">
                <td>
                    <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                </td>
                <td>
                    <asp:Label ID="GradeLabel" runat="server" Text='<%# Eval("Grade") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#FFFBD6; color: #333333;">
                                <th runat="server">
                                    CourseID</th>
                                <th runat="server">
                                    Grade</th>
                                <th runat="server">
                                    StudentID</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        
                        style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#FFCC66; font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                </td>
                <td>
                    <asp:Label ID="GradeLabel" runat="server" Text='<%# Eval("Grade") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:AccessDataSource ID="CoursesDataSource" runat="server" 
        DataFile="~/Universityx.mdb" 
        
        SelectCommand="SELECT [CourseID], [Grade], [StudentID] FROM [CoursesTaken] WHERE ([StudentID] = ?)" 
        DeleteCommand="DELETE FROM [CoursesTaken] WHERE CourseID = @OCourseID AND StudentID = @OStudentID" 
        InsertCommand="INSERT INTO [CoursesTaken] ([CourseID], [Grade], [StudentID]) VALUES (?, ?, ?)" 
        UpdateCommand="UPDATE [CoursesTaken] SET [Grade] = ? WHERE (([CourseID] = ?) OR ([CourseID] IS NULL AND ? IS NULL)) AND (([StudentID] = ?) OR ([StudentID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="OCourseID" Type="String" />
            <asp:Parameter Name="OStudentID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseID" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="StudentID" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:CookieParameter CookieName="StudentSelectedCookie" Name="StudentID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="CourseID" Type="String" />
            <asp:Parameter Name="StudentID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Grade"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Edit" />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Delete" />
    <asp:Button ID="Button2" runat="server" Text="Clear" 
        onclick="Button2_Click" />
    <br />
    </asp:Content>
