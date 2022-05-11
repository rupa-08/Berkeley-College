<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher_Module mapping form.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Teacher_Module_mapping_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Tutors Details</title>
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
             <div class="bg-img" style="background-image: url('https://ak.picdn.net/shutterstock/videos/5168909/thumb/1.jpg'); height: 100vh; background-position: center; background-repeat: no-repeat; background-size:cover ">
 
    <form id="form1" runat="server">
        <div class="container">
                    <br>
                    <br>
              <h1>Module teacher teaches</h1>
                    <br>
            <asp:DropDownList ID="DropDownList1" CssClass="table table-bordered table-hover table-responsive" runat="server" DataSourceID="SqlDataSource1" DataTextField="PERSON_NAME" DataValueField="ID" AutoPostBack="True" Height="40px" Width="163px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE_TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID AND &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE_TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;MODULE_CODE&quot;) VALUES (:TEACHER_ID, :MODULE_CODE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID AS ID, PERSON.PERSON_NAME FROM PERSON, TEACHER WHERE PERSON.PERSON_ID = TEACHER.TEACHER_ID">
                <DeleteParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br/>
            <br/>
            <br/>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="PERSON_ID" HeaderText="ID" ReadOnly="True" SortExpression="PERSON_ID" />
                    <asp:BoundField DataField="PERSON_NAME" HeaderText="Teacher name" SortExpression="PERSON_NAME" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="Country" SortExpression="COUNTRY"></asp:BoundField>
                    <asp:BoundField DataField="CITY" HeaderText="City" SortExpression="CITY"></asp:BoundField>
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="Module" SortExpression="MODULE_NAME"></asp:BoundField>
                    <asp:BoundField DataField="MODULE_TYPE" HeaderText="Course" SortExpression="MODULE_TYPE"></asp:BoundField>
                    <asp:BoundField DataField="PERSON_PHONE" HeaderText="Mobile number" SortExpression="PERSON_PHONE"></asp:BoundField>
                    <asp:BoundField DataField="PERSON_EMAIL" HeaderText="Email" SortExpression="PERSON_EMAIL"></asp:BoundField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" />  </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, PERSON.PERSON_NAME, ADDRESS.COUNTRY, ADDRESS.CITY, &quot;MODULE&quot;.MODULE_NAME, &quot;MODULE&quot;.MODULE_TYPE, PERSON.PERSON_PHONE, PERSON.PERSON_EMAIL FROM PERSON, PERSON_ADDRESS, ADDRESS, TEACHER, MODULE_TEACHER, &quot;MODULE&quot; WHERE PERSON.PERSON_ID = PERSON_ADDRESS.PERSON_ID AND ADDRESS.ADDRESS_ID = PERSON_ADDRESS.ADDRESS_ID AND PERSON.PERSON_ID = TEACHER.TEACHER_ID AND TEACHER.TEACHER_ID = MODULE_TEACHER.TEACHER_ID AND &quot;MODULE&quot;.MODULE_CODE = MODULE_TEACHER.MODULE_CODE AND TEACHER.TEACHER_ID = :teacher_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="teacher_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
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
