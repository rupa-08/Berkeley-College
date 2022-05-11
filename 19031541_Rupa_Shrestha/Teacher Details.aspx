<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher Details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEACHER DETAILS</title>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="styleSheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>

     </style>
</head>
<body>
    <nav class="navbar navbar-inverse" style="background-color: #002147">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="\dashboard.aspx">College Management System</a>
        </div>
        <ul class="nav navbar-nav">
                <li><a href="\Department Details.aspx">Department List</a></li> 
                <li><a href="\Module Details.aspx">Module Details</a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Teacher
                <span class="caret"></span></a>
              <ul class="dropdown-menu">
                     <li><a href="\Teacher Details.aspx">Teacher Details</a></li>
                    <li><a href="\Teacher_Module mapping form.aspx">Module Tutors</a></li>
                    <li><a href="\Address Details.aspx">Person Address</a></li>
               </ul>
              </li>       
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Student
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="\Student Details.aspx">Student Details</a></li>
                    <li><a href="\Student assignment details.aspx">Student Result Details</a></li>
                    <li><a href="\Student fee details.aspx">Student Fee Details</a></li>
                    <li><a href="\Address Details.aspx">Person Address</a></li>
                </ul>
              </li>
     
            </ul>
        </div>
    </nav>
         <div class="bg-img" style="background-image: url('https://ak.picdn.net/shutterstock/videos/5168909/thumb/1.jpg'); height: 190vh; background-position: center; background-repeat: no-repeat; background-size:cover ">

    <form id="form1" runat="server">
        <div class="container">
            <br/>
             <h1>Teacher details</h1>
            <br/>
            <br/>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="TITLE" HeaderText="Teacher title" SortExpression="TITLE" />
                    <asp:BoundField DataField="HIRE_DATE" HeaderText="Hire date" SortExpression="HIRE_DATE" />
                    <asp:BoundField DataField="WORKING_STATUS" HeaderText="Working status" SortExpression="WORKING_STATUS" />
                    <asp:BoundField DataField="SALARY" HeaderText="Salary" SortExpression="SALARY" />
                    <asp:TemplateField HeaderText="Full name">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="PERSON_NAME" Enabled="false" DataValueField="PERSON_ID" SelectedValue='<%# Bind("TEACHER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_NAME&quot;, &quot;PERSON_ID&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;TITLE&quot;, &quot;HIRE_DATE&quot;, &quot;WORKING_STATUS&quot;, &quot;SALARY&quot;) VALUES (:TEACHER_ID, :TITLE, :HIRE_DATE, :WORKING_STATUS, :SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;TITLE&quot; = :TITLE, &quot;HIRE_DATE&quot; = :HIRE_DATE, &quot;WORKING_STATUS&quot; = :WORKING_STATUS, &quot;SALARY&quot; = :SALARY WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                    <asp:Parameter Name="TITLE" Type="String" />
                    <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
                    <asp:Parameter Name="SALARY" Type="Decimal" />
                    <asp:Parameter Name="WORKING_STATUS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TITLE" Type="String" />
                    <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
                    <asp:Parameter Name="SALARY" Type="Decimal" />
                    <asp:Parameter Name="WORKING_STATUS" Type="String" />
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
                
                <InsertItemTemplate>
                     <br /> <br />
                    ID:
                    <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                     <br /> <br />
                    Title:
                    <asp:TextBox ID="TITLETextBox" runat="server" Text='<%# Bind("TITLE") %>' />
                    <br /> <br />
                    Hire date:
                    <asp:TextBox ID="HIRE_DATETextBox" runat="server" Text='<%# Bind("HIRE_DATE") %>' />
                    <br /> <br />
                    Working status:
                    <asp:TextBox ID="WORKING_STATUSTextBox" runat="server" Text='<%# Bind("WORKING_STATUS") %>' />
                    <br /> <br />
                    Salary:
                    <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                    <br /> <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
               <ItemTemplate>
                    
                    <div class="btn">
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" ForeColor="aliceblue" Text="Insert New Teacher" />
                    </div>
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
             </div>
     <nav class="navbar navbar-inverse navbar-bottom" style="background-color:black; height:70px; align-content:center;">
        <div class="mx-auto">
            <div class="container-fluid"></div>
            <div class="navbar-header">
            </div>
            <ul class="nav navbar-nav">
                <li><a class="navbar-brand" href="#" style="align-content: safe center">© 2022 Berkeley College.</a></li>
                <li><a href="#">Licensed under cc by-sa. Inc; user contributions</a></li>
            </ul>
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="https://www.instagram.com/">Instagram</a></li>
                    <li><a href="https://www.facebook.com/">Facebook</a></li>
                    <li><a href="https://www.gmail.com/">Gmail</a></li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
