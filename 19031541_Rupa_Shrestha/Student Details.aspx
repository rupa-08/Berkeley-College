<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="styleSheet.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style style="font-family: 'Candara Light'; font-size: large; font-style: normal; color: #FFFFFF">

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
        <div class="container">
            <br/>
            <h1>Student details</h1>
            <br/>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="ENROLLMENT_DATE" HeaderText="Student enrollment date" SortExpression="ENROLLMENT_DATE" />
                    <asp:BoundField DataField="ATTENDANCE_STATUS" HeaderText="Attendance" SortExpression="ATTENDANCE_STATUS" />
                    <asp:BoundField DataField="SECTION" HeaderText="Section" SortExpression="SECTION" />
                    <asp:BoundField DataField="ROLL_NUMBER" HeaderText="Roll number" SortExpression="ROLL_NUMBER" />
                    <asp:TemplateField HeaderText="Full name">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="PERSON_NAME" Enabled="false" DataValueField="PERSON_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_NAME&quot;, &quot;PERSON_ID&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;ENROLLMENT_DATE&quot;, &quot;ATTENDANCE_STATUS&quot;, &quot;SECTION&quot;, &quot;ROLL_NUMBER&quot;) VALUES (:STUDENT_ID, :ENROLLMENT_DATE, :ATTENDANCE_STATUS, :SECTION, :ROLL_NUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;ENROLLMENT_DATE&quot; = :ENROLLMENT_DATE, &quot;ATTENDANCE_STATUS&quot; = :ATTENDANCE_STATUS, &quot;SECTION&quot; = :SECTION, &quot;ROLL_NUMBER&quot; = :ROLL_NUMBER WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="ENROLLMENT_DATE" Type="DateTime" />
                    <asp:Parameter Name="ATTENDANCE_STATUS" Type="String" />
                    <asp:Parameter Name="SECTION" Type="String" />
                    <asp:Parameter Name="ROLL_NUMBER" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENROLLMENT_DATE" Type="DateTime" />
                    <asp:Parameter Name="ATTENDANCE_STATUS" Type="String" />
                    <asp:Parameter Name="SECTION" Type="String" />
                    <asp:Parameter Name="ROLL_NUMBER" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
               
                <InsertItemTemplate>
                     <br /> <br />
                    ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                     <br /> <br />
                    Student enrollment date:
                    <asp:TextBox ID="ENROLLMENT_DATETextBox" runat="server" Text='<%# Bind("ENROLLMENT_DATE") %>' />
                    <br /> <br />
                    Attendance:
                    <asp:TextBox ID="ATTENDANCE_STATUSTextBox" runat="server" Text='<%# Bind("ATTENDANCE_STATUS") %>' />
                    <br /> <br />
                    Section:
                    <asp:TextBox ID="SECTIONTextBox" runat="server" Text='<%# Bind("SECTION") %>' />
                    <br /> <br />
                    Roll number:
                    <asp:TextBox ID="ROLL_NUMBERTextBox" runat="server" Text='<%# Bind("ROLL_NUMBER") %>' />
                    <br /> <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PERSON_NAME&quot;, &quot;PERSON_ID&quot; FROM &quot;PERSON&quot;"></asp:SqlDataSource>
                </InsertItemTemplate>
               <ItemTemplate>
                    <div class="btn">
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" ForeColor="aliceblue" CommandName="New" Text="Insert New Student" />
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
