<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment13Final.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Troll University: Assignment 13</title>
  <link href="Main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Scripts/jquery-1.11.0.js"></script>
<script type="text/javascript" src="Scripts/jquery-ui-1.10.3.js"></script>
  		<script>
  		    // Wait until the DOM has loaded before querying the document
  		    $(document).ready(function () {
  		        $('ul.tabs').each(function () {
  		            var $active, $content, $links = $(this).find('a');
  		            $active = $($links.filter('[href="' + location.hash + '"]')[0] || $links[0]);
  		            $active.addClass('active');
  		            $content = $($active[0].hash);
  		            $links.not($active).each(function () {$(this.hash).hide();});
  		            $(this).on('click', 'a', function (e) {
  		                $active.removeClass('active');
  		                $content.hide();
  		                $active = $(this);
  		                $content = $(this.hash);
  		                $active.addClass('active');
  		                $content.show();
  		                e.preventDefault();
  		            });
  		        });
  		    });
		</script>
</head>
<body>
  <form id="form1" runat="server">
  <div id="page">
  <div id="header">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
  </div>
  <div id="main">		
  <p>Click on the tab you want to go to.</p>
  <ul class="tabs">
			<li><a href="http://localhost:51836/Default.aspx#tab1" class="active">Welcome to TU</a></li>
			<li><a href="http://localhost:51836/Default.aspx#tab2" >Student List</a></li>
			<li><a href="http://localhost:51836/Default.aspx#tab3" >Course List</a></li>
		</ul>
		<div id="tab1" style="display: none;">
			<h3>Welcome to Troll University</h3>
            <p>*Remember to place description here</p>
	<div id="shoutbox">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
      <p>Hey, here is a shoutbox</p>
        <asp:UpdatePanel ID="ShoutBoxPanel1" runat="server">
          <ContentTemplate>
            <asp:Label ID="Title" runat="server"></asp:Label>
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
          </ContentTemplate>
          <Triggers>
            <asp:AsyncPostBackTrigger ControlID="AddShoutButton" EventName="Click" />
          </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="ShoutBoxPanel2" runat="server" UpdateMode="Conditional">
          <ContentTemplate>
            <p>Name:</p>
            <p class="entry">
              <asp:TextBox ID="UserNameTextBox" runat="server" Width="100px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please give your shout a name." ControlToValidate="UserNameTextBox" Display="Dynamic" CssClass="error" />
            </p>
            <p>Shout:</p>
            <p>
              <asp:TextBox ID="Shout" runat="server" Width="220px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Write a message." ControlToValidate="Shout" Display="Dynamic" CssClass="error" />
            </p>
            <asp:Button ID="AddShoutButton" runat="server" Text="Add Shout" onclick="AddShoutButton_Click" />
          </ContentTemplate>
        </asp:UpdatePanel>
    </div>
            </div>
		<div id="tab2" style="display: block;">
			<h3>Students</h3>
			
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
		</div>
		<div id="tab3" style="display: none;">
			<h3>Courses</h3>
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
                <table id="Table1" runat="server" 
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
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th id="Th1" runat="server">
                                        CourseID</th>
                                    <th id="Th2" runat="server">
                                        Discipline</th>
                                    <th id="Th3" runat="server">
                                        CourseTitle</th>
                                    <th id="Th4" runat="server">
                                        CourseNo</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td2" runat="server" 
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
		</div>
  </div>
  </div>
  </form>
</body>
</html>