<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student assignment details.aspx.cs" Inherits="_19031541_Rupa_Shrestha.Student_assignment_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Result</title>
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
    <nav class="navbar navbar-inverse">
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
             <h1>Student assignment details</h1>
                    <br>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PERSON_NAME" DataValueField="ID"  Height="40px" Width="163px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID AS ID, PERSON.PERSON_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
                    <br>
                    <br>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="PERSON_ID,ROLL_NUMBER" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PERSON_ID" HeaderText="ID" SortExpression="PERSON_ID" ReadOnly="True" />
                    <asp:BoundField DataField="PERSON_NAME" HeaderText="Student name" SortExpression="PERSON_NAME" />
                    <asp:BoundField DataField="ATTENDANCE_STATUS" HeaderText="Attendance" SortExpression="ATTENDANCE_STATUS" />
                    <asp:BoundField DataField="ROLL_NUMBER" HeaderText="Roll number" SortExpression="ROLL_NUMBER" ReadOnly="True" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="Module" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="GRADE" HeaderText="Grade" SortExpression="GRADE" />
                    <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                    <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="Assignment type" SortExpression="ASSIGNMENT_TYPE" />
                    <asp:BoundField DataField="ASSIGNMENT_WEIGHT" HeaderText="Assignment status" SortExpression="ASSIGNMENT_WEIGHT" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="Department" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="MODULE_TYPE" HeaderText="Course" SortExpression="MODULE_TYPE" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="NotSet" CssClass="icon-bar" Font-Underline="False" BackColor="#2774AE" ForeColor="White" Font-Names="garamond-regular" Font-Size="15" /></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, PERSON.PERSON_NAME, STUDENT.ATTENDANCE_STATUS, STUDENT.ROLL_NUMBER, &quot;MODULE&quot;.MODULE_NAME, GRADE.GRADE, GRADE.STATUS, ASSIGNMENT.ASSIGNMENT_TYPE, ASSIGNMENT.ASSIGNMENT_WEIGHT, DEPARTMENT.DEPARTMENT_NAME, &quot;MODULE&quot;.MODULE_TYPE FROM PERSON, STUDENT, RESULT, ASSIGNMENT, GRADE, DEPARTMENT, &quot;MODULE&quot; WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID AND STUDENT.STUDENT_ID = RESULT.STUDENT_ID AND ASSIGNMENT.ASSIGNMENT_ID = RESULT.ASSIGNMENT_ID AND GRADE.GRADE_ID = RESULT.GRADE AND DEPARTMENT.DEPARMENT_ID = ASSIGNMENT.DEPARTMENT_ID AND &quot;MODULE&quot;.MODULE_CODE = RESULT.MODULE_ID AND RESULT.STUDENT_ID = :student_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="student_ID" PropertyName="SelectedValue" />
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
