<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackAdmin.aspx.cs" Inherits="FinalYearProject.FeedbackAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <style>
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
        }

        #image {
            margin-left: 70px;
            margin-top: 15px;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 305px;
            /*background-color: #f1f1f1;*/
            background-color: #C0C0C0;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        #table1 {
            padding: 10px;
            text-align: center;
        }


        .sidebar a {
            display: block;
            color: black;
            padding: 16px;
            text-decoration: none;
        }

            .sidebar a:hover:active {
                /*   background-color: #04AA6D;*/
                /*color: white;*/
                background-color: #000000bf;
                color: white;
            }

            .sidebar a:hover:not(.active) {
                /*background-color: #555;*/
                background-color: #000000bf;
                color: white;
            }

        div.content {
            margin-left: 250px;
            padding: 1px 16px;
            height: 745px;
            /* background-color:lightgrey;*/
        }

        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

                .sidebar a {
                    float: left;
                }

            div.content {
                margin-left: 0;
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <%--    <a href="#image" id="image">--%>
            <img src="https://img.icons8.com/color/81/000000/person-female.png" id="image" alt="image not found" />
            <%--</a>--%>
            <%-- <a href="#heading">--%>
            <h4 style="margin-left: 40px;">admin@gmail.com</h4>
            <%--    </a>--%>
            <i class="fa fa-twitter-square" style="font-size: 24px; margin-left: 66px; margin-top: -55px"></i>
            <i class="fa fa-linkedin-square" style="font-size: 24px; margin-left: 10px"></i>
            <i class="fa fa-facebook-square" style="font-size: 24px; margin-left: 10px"></i>

            <hr />
            <a href="AdminPage.aspx">Dashboard </a>
            <hr />

            <a href="../Admin/AdminDashboard.aspx">Add Mechanic </a>
            <hr />
            <a href="AddDriver.aspx">Add Driver</a>
            <hr />
            <a href="UpdateDriver.aspx">Update Driver </a>
            <hr />
            <a href="FeedbackAdmin.aspx">User Feedback</a>
            <hr />
            <a href="#contact">Request</a>
            <hr />
            <a href="HomePage.aspx">LogOut</a>

            <hr />
        </div>


        <div class="content">
            <center>
                <h1>User Feedback</h1>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="322px" Width="1424px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </center>



        </div>
    </form>
</body>
</html>
