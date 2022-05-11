<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="_19031541_Rupa_Shrestha.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styleSheet.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Teacher
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="\Teacher Details.aspx">Teacher Details</a></li>
                        <li><a href="\Teacher_Module mapping form.aspx">Module Tutors</a></li>
                        <li><a href="\Address Details.aspx">Person Address</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Student
                        <span class="caret"></span>
                    </a>
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



    <div class="containers">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="d-flex align-items-center justify-content-center min-vh-100">
                        <img src="https://mir-s3-cdn-cf.behance.net/project_modules/1400/2c883797642377.5eca1b2e3da1a.gif" alt="img1" style="height: 60vh; width: 220vh; background-size: cover; ">
                        <div class="carousel-caption" style="font-size: 30px; color:darkcyan">
                            <h1>Hello, there !!</h1>
                            <p>Welcome to Berkeley College Dashboard</p>

                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="d-flex align-items-center justify-content-center min-vh-100">
                        <img src="https://www.aihr.com/wp-content/uploads/People-management-1.jpg" alt="img2" style="height: 60vh; width: 220vh; background-size: cover; ">
                        <div class="carousel-caption" style="font-size: 30px; color:darkcyan">
                            <h1>Manage all the oprations of Berkeley College</h1>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="d-flex align-items-center justify-content-center min-vh-100">
                        <img src="https://wiki.optimy.com/wp-content/uploads/2017/07/Project-management-1080x675.jpg" alt="img3" style="height: 60vh; width: 220vh; background-size: cover; ">
                        <div class="carousel-caption" style="font-size: 26px; color:white">
                            <h3>You can register and delete staff members, see record and do many more things.</h3>

                        </div>
                    </div>
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>


    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STATUS, COUNT(STUDENT_ID) AS ID FROM FEE GROUP BY STATUS ORDER BY ID"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT MODULE_CODE, COUNT(STUDENT_ID) AS ID FROM MODULE_STUDENT GROUP BY MODULE_CODE ORDER BY ID"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT MODULE_CODE, COUNT(TEACHER_ID) AS ID FROM MODULE_TEACHER GROUP BY MODULE_CODE ORDER BY ID"></asp:SqlDataSource>
                <div class="media">
            <div class="media-left">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" style="margin-left: 80px; height:400px; width:500px;">
                <Series>
                    <asp:Series Name="Series1" XValueMember="STATUS" YValueMembers="ID">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
               </div>
            <div class="media-body" style="padding: 80px;">
                <div class="h" style="color:darkblue; padding-top: 50px;"><h2 class="media-heading">Student Fee Bar Graph</h2></div>
                <div calss="txt" style="word-wrap:break-word; color:dimgray; text-indent:7%; padding-top: 10px;">
                    <h4>
                        The graph along side is the student fee bar graph. The x-axis of the bar represents student fee status and the y-axis of the bar graph represents student id.
                    </h4>
                </div>
            </div>

            <br/>
            <br/>


            <div class="media">
                <div class="media-body ">
                    <div class="headin" style="color:darkblue">
                        <h2 class="media-heading" style="padding-top: 150px; padding-left: 80px;">Student module stacked chart</h2>
                    </div>
                    <div class="tx" style="word-wrap:break-word; color:dimgray;">
                        <h4 style="padding-left: 80px; text-indent:7%;" padding-top: 10px;>
                            The graph along side is the student module stacked chart graph. The x-axis of the bar represents student id and the y-axis of the stacked chart repersents module code.
                           </h4>
                    </div>
                </div>
                <div class="media-right">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" style=" margin-right: 150px; margin-top: 40px; height:400px; width:500px;">
                <Series>
                    <asp:Series Name="Series1" ChartType="StackedBar" XValueMember="MODULE_CODE" YValueMembers="ID">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

                </div>
            </div>

                    <div class="media">
            <div class="media-left">
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" style="margin-left: 80px; height:400px; width:500px;">
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="MODULE_CODE" YValueMembers="ID">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>  </div>
            <div class="media-body" style="padding: 80px;">
                <div class="h" style="color:darkblue"><h2 class="media-heading"> The teacher module pie chart</h2></div>
                <div calss="txt" style="word-wrap:break-word; color:dimgray; text-indent:7%;">
                    <h4>
                         The graph along side is the teacher module stacked chart graph. The chart gives graphical analyisis of teacher who teaches a particlar module.
                           
                    </h4>
                </div>
            </div>



           
            
        </div>
    </form>

     <br />
    <br />
    <br />
    <br />
    <br />

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
