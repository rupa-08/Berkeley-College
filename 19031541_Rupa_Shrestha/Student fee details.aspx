<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student fee details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Student_fee_details" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Fee Details</title>
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

    
    <div class="bg-img" style="background-image: url('https://ak.picdn.net/shutterstock/videos/5168909/thumb/1.jpg'); height: 100vh; background-position: center; background-repeat: no-repeat; background-size:cover ">
       
    <form id="form1" runat="server">
        <div class="container">
            <br>
             <h1>Student Fee details</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID AS ID, PERSON.PERSON_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
                    <br>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="PERSON_NAME" AutoPostBack="True" DataValueField="ID"  Height="40px" Width="163px">
            </asp:DropDownList>
                    <br>
            
                    <br>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="Department" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="AMOUNT" HeaderText="Amount" SortExpression="AMOUNT" />
                    <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                    <asp:BoundField DataField="PAY_DATE" HeaderText="Fee pay date" SortExpression="PAY_DATE" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="Student ID" SortExpression="STUDENT_ID" ReadOnly="True" />
                    <asp:BoundField DataField="PERSON_NAME" HeaderText="Student name" SortExpression="PERSON_NAME" />
                    <asp:BoundField DataField="PERSON_PHONE" HeaderText="Mobile number" SortExpression="PERSON_PHONE" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="Country" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="CITY" HeaderText="City" SortExpression="CITY" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" /></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DEPARTMENT.DEPARTMENT_NAME, FEE.AMOUNT, FEE.STATUS, FEE.PAY_DATE, STUDENT.STUDENT_ID, PERSON.PERSON_NAME, PERSON.PERSON_PHONE, ADDRESS.COUNTRY, ADDRESS.CITY FROM FEE, STUDENT, PERSON, PERSON_ADDRESS, ADDRESS, DEPARTMENT WHERE STUDENT.STUDENT_ID = FEE.STUDENT_ID AND PERSON.PERSON_ID = STUDENT.STUDENT_ID AND PERSON.PERSON_ID = PERSON_ADDRESS.PERSON_ID AND ADDRESS.ADDRESS_ID = PERSON_ADDRESS.ADDRESS_ID AND DEPARTMENT.DEPARMENT_ID = FEE.DEPARTMENT_ID AND FEE.STUDENT_ID = :student_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="student_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
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
