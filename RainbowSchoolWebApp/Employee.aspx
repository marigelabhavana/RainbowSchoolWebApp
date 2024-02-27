<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="RainbowSchoolWebApp.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Employee Data Form</title>
    <link href="Employee.css" rel="stylesheet" />
</head>
<body>
    <h1>Employee Data</h1>
   <form id="form1" runat="server">
     
       <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" >
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
               <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
               <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
               <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
               <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
               <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
           </Columns>
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:rainbowschoolConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmployeeID] = @original_EmployeeID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary" InsertCommand="INSERT INTO [Employee] ([FirstName], [LastName], [Gender], [Department], [Salary]) VALUES (@FirstName, @LastName, @Gender, @Department, @Salary)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:rainbowschoolConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary WHERE [EmployeeID] = @original_EmployeeID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary">
           <DeleteParameters>
               <asp:Parameter Name="original_EmployeeID" Type="Int32" />
               <asp:Parameter Name="original_FirstName" Type="String" />
               <asp:Parameter Name="original_LastName" Type="String" />
               <asp:Parameter Name="original_Gender" Type="String" />
               <asp:Parameter Name="original_Department" Type="String" />
               <asp:Parameter Name="original_Salary" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="FirstName" Type="String" />
               <asp:Parameter Name="LastName" Type="String" />
               <asp:Parameter Name="Gender" Type="String" />
               <asp:Parameter Name="Department" Type="String" />
               <asp:Parameter Name="Salary" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="FirstName" Type="String" />
               <asp:Parameter Name="LastName" Type="String" />
               <asp:Parameter Name="Gender" Type="String" />
               <asp:Parameter Name="Department" Type="String" />
               <asp:Parameter Name="Salary" Type="Int32" />
               <asp:Parameter Name="original_EmployeeID" Type="Int32" />
               <asp:Parameter Name="original_FirstName" Type="String" />
               <asp:Parameter Name="original_LastName" Type="String" />
               <asp:Parameter Name="original_Gender" Type="String" />
               <asp:Parameter Name="original_Department" Type="String" />
               <asp:Parameter Name="original_Salary" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
     
   </form>
</body>
</html>
