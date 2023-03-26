<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="FinalYearProject.UserPage" %>

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
            margin-left: 90px;
            margin-top: 15px;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 300px;
            /*background-color: #f1f1f1;*/
            background-color: #C0C0C0;
            position: fixed;
            height: 100%;
            overflow: auto;
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
                    background-color: black;
                    color: white;
                }

                .sidebar a:hover:not(.active) {
                    /*background-color: #555;*/
                    background-color: black;
                    color: white;
                }

        div.content {
            margin-left: 300px;
            padding: 1px 16px;
            height: 1000px;
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

    <%--  <div class="image">
    
      
    </div>--%>

    <div class="sidebar">
        <%--    <a href="#image" id="image">--%>
        <img src="https://img.icons8.com/color/81/000000/person-female.png" id="image" alt="image not found" />
        <%--</a>--%>
        <%-- <a href="#heading">--%>
        <h4 style="margin-left: 60px;">admin@gmail.com</h4>
        <%--    </a>--%>
        <i class="fa fa-twitter-square" style="font-size: 24px; margin-left: 76px; margin-top: -55px"></i>
        <i class="fa fa-linkedin-square" style="font-size: 24px; margin-left: 10px"></i>
        <i class="fa fa-facebook-square" style="font-size: 24px; margin-left: 10px"></i>

        <hr />
        <a href="AdminPage.aspx">Dashboard </a>
        <hr />
        <a href="../Admin/AdminDashboard.aspx">Add Mechanic </a>
        <hr />
        <a href="AddDriver.aspx">Add Driver </a>
        <hr />
        <a href="UpdateDriver.aspx">Update Driver </a>
        <hr />
        <a href="#contact">Request</a>
        <hr />
        <a href="#about">Search</a>

        <hr />
        <a href="HomePage.aspx">LogOut</a>
    </div>
        </form>
</body>
</html>
