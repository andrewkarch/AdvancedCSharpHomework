<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MngEmployees.aspx.cs" Inherits="AWC_IMS.MngEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("table").tablesorter()
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="grid_12">
        <h2 id="pageTitle">Manage Employees</h2>
    </div>
    <div class="grid_6">
        <p>Search by Employee ID or Name: </p><asp:TextBox ID="txtSearch" runat="server" CssClass="searchText"></asp:TextBox>
    </div>
    <div class="grid_6">
        <asp:Button ID="btnAdd" runat="server" CssClass="item" PostBackUrl="" Text="Add Employee" />
    </div>
    <div class="grid_12">
        <table id="large" class="tablesorter">
            <thead>
		        <tr>
                    <th class="radioColumn"></th>
                    <th>EmpID</th>
			        <th>First Name</th>
                    <th>Surname</th>
			        <th>Hire Date</th>
			        <th>Department</th>
			        <th>Active</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
                    <td><input id="emp01" type="radio" /></td>
			        <td>01</td>
			        <td>Name01</td>
			        <td>SName01</td>
			        <td>01/01/2001</td>
			        <td>Dept01</td>
			        <td>
                        Yes</td>
		        </tr>
		        <tr>
                    <td><input id="emp02" type="radio" /></td>
			        <td>02</td>
			        <td>Name01</td>
			        <td>SName01</td>
			        <td>01/01/2001</td>
			        <td>Dept02</td>
			        <td>
                        Yes</td>
		        </tr>
		        <tr>
                    <td><input id="emp03" type="radio" /></td>
			        <td>03</td>
			        <td>Name01</td>
			        <td>SName01</td>
			        <td>01/01/2001</td>
			        <td>Dept03</td>
			        <td>
                        No</td>
		        </tr>
		        <tr>
                    <td><input id="emp04" type="radio" /></td>
			        <td>04</td>
			        <td>Name01</td>
			        <td>SName01</td>
			        <td>01/01/2001</td>
			        <td>Dept04</td>
			        <td>
                        Yes</td>
		        </tr>
	        </tbody>
        </table>
    </div>
</asp:Content>
