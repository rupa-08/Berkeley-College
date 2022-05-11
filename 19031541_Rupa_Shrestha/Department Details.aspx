<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department Details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Departmet Details</title>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="styleSheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style style="font-family: 'Candara Light'; font-size: large; font-style: normal; color: #FFFFFF">
    /* Remove the navbar's default margin-bottom and rounded borders */
    
  </style>
</head>
<body>
   
       <nav class="navbar navbar-inverse" style="background-color: navy">
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
         <div class="bg-img" style="background-image: url('https://ak.picdn.net/shutterstock/videos/5168909/thumb/1.jpg'); height: 140vh; background-position: center; background-repeat: no-repeat; background-size:cover ">
       

        <form id="form1" runat="server">
           
                <div class="container">
                    <br/>
                    <br/>
                     <h1>Department details</h1>
                    <br/>
                    
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARMENT_ID" DataSourceID="SqlDataSource1" CellPadding="5" Font-Underline="False">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="DEPARMENT_ID" HeaderText="Department ID" ReadOnly="True" SortExpression="DEPARMENT_ID" />
                        <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="Department name" SortExpression="DEPARTMENT_NAME" />
                        <asp:BoundField DataField="DEPARTMENT_HEAD" HeaderText="Head of Depertment" SortExpression="DEPARTMENT_HEAD" />
                        <asp:BoundField DataField="OFFICE_ROOM_NUMBER" HeaderText="Room number" SortExpression="OFFICE_ROOM_NUMBER" />
                        <asp:BoundField DataField="DEPARTMENT_TYPE" HeaderText="Department type" SortExpression="DEPARTMENT_TYPE" />
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" />
                </asp:GridView>
                

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARMENT_ID&quot; = :DEPARMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_HEAD&quot;, &quot;OFFICE_ROOM_NUMBER&quot;, &quot;DEPARTMENT_TYPE&quot;) VALUES (:DEPARMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_HEAD, :OFFICE_ROOM_NUMBER, :DEPARTMENT_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_HEAD&quot; = :DEPARTMENT_HEAD, &quot;OFFICE_ROOM_NUMBER&quot; = :OFFICE_ROOM_NUMBER, &quot;DEPARTMENT_TYPE&quot; = :DEPARTMENT_TYPE WHERE &quot;DEPARMENT_ID&quot; = :DEPARMENT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="DEPARMENT_ID" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="DEPARMENT_ID" Type="Decimal" />
                        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                        <asp:Parameter Name="DEPARTMENT_HEAD" Type="String" />
                        <asp:Parameter Name="OFFICE_ROOM_NUMBER" Type="Decimal" />
                        <asp:Parameter Name="DEPARTMENT_TYPE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                        <asp:Parameter Name="DEPARTMENT_HEAD" Type="String" />
                        <asp:Parameter Name="OFFICE_ROOM_NUMBER" Type="Decimal" />
                        <asp:Parameter Name="DEPARTMENT_TYPE" Type="String" />
                        <asp:Parameter Name="DEPARMENT_ID" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARMENT_ID" DataSourceID="SqlDataSource1">
                    
                    <InsertItemTemplate>
                        <br /><br />
                        ID:
                        <asp:TextBox ID="DEPARMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARMENT_ID") %>' />
                        <br /><br />
                        Department name:
                        <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                        <br /><br />
                        Department head:
                        <asp:TextBox ID="DEPARTMENT_HEADTextBox" runat="server" Text='<%# Bind("DEPARTMENT_HEAD") %>' />
                        <br /><br />
                        Room Number:
                        <asp:TextBox ID="OFFICE_ROOM_NUMBERTextBox" runat="server" Text='<%# Bind("OFFICE_ROOM_NUMBER") %>' />
                        <br /><br />
                        Department type:
                        <asp:TextBox ID="DEPARTMENT_TYPETextBox" runat="server" Text='<%# Bind("DEPARTMENT_TYPE") %>' />
                        <br /><br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
            
                    <ItemTemplate>
                         <div class="btn">
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" ForeColor="aliceblue" Text="Insert New Department" />
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
