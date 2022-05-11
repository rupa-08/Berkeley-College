<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module Details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Module_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Deatils</title>
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
         <div class="bg-img" style="background-image: url('https://ak.picdn.net/shutterstock/videos/5168909/thumb/1.jpg'); height: 190vh; background-position: center; background-repeat: no-repeat; background-size:cover ">
    
    <form id="form1" runat="server">
        <div class="container" style="border-color: black">
            <br/>
            <br/>
             <h1>Module details</h1>
            <br/>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="Module code" ReadOnly="True" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="Module name" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="CREDITS" HeaderText="Credit" SortExpression="CREDITS" />
                    <asp:BoundField DataField="DESCRIPTION" HeaderText="Description" SortExpression="DESCRIPTION" />
                    <asp:BoundField DataField="MODULE_TYPE" HeaderText="Course" SortExpression="MODULE_TYPE" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDITS&quot;, &quot;DESCRIPTION&quot;, &quot;MODULE_TYPE&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDITS, :DESCRIPTION, :MODULE_TYPE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDITS&quot; = :CREDITS, &quot;DESCRIPTION&quot; = :DESCRIPTION, &quot;MODULE_TYPE&quot; = :MODULE_TYPE WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
                <DeleteParameters>
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                    <asp:Parameter Name="MODULE_NAME" Type="String" />
                    <asp:Parameter Name="CREDITS" Type="String" />
                    <asp:Parameter Name="DESCRIPTION" Type="String" />
                    <asp:Parameter Name="MODULE_TYPE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MODULE_NAME" Type="String" />
                    <asp:Parameter Name="CREDITS" Type="String" />
                    <asp:Parameter Name="DESCRIPTION" Type="String" />
                    <asp:Parameter Name="MODULE_TYPE" Type="String" />
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="SqlDataSource1">
                
                <InsertItemTemplate>
                    <br />
                     <br />
                    Module code:
                    <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
                   
                     <br />
                     <br />
                    Module name:
                    <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                    <br />
                     <br />
                    Credit:
                    <asp:TextBox ID="CREDITSTextBox" runat="server" Text='<%# Bind("CREDITS") %>' />
                    <br />
                     <br />
                    Description:
                    <asp:TextBox ID="DESCRIPTIONTextBox" runat="server" Text='<%# Bind("DESCRIPTION") %>' />
                   <br />
                     <br />
                    Course:
                    <asp:TextBox ID="MODULE_TYPETextBox" runat="server" Text='<%# Bind("MODULE_TYPE") %>' />
                    <br />
                     <br />

                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                   <div class="btn">
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" ForeColor="aliceblue" Text="Insert New Module" />
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
