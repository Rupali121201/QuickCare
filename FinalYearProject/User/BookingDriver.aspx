<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingDriver.aspx.cs" Inherits="FinalYearProject.User.BookingDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />

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
            /*background-color:#aa8958;*/
            background-color: #b8c2cd;
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
                    /*     background-color: #04AA6D;*/
                    /*color: white;*/
                    /*     background-color: #a7652e;*/
                    background-color: #000000bf;
                    color: white;
                }

                .sidebar a:hover:not(.active) {
                    /*  background-color: #04AA6D;*/
                    /*background-color: #555;*/
                    /*     background-color: #a7652e;*/
                    background-color: #000000bf;
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

        body {
            /* background-image: url(../images/Car1.jpg);*/
            background-size: cover;
            /* Add the blur effect */
            /* filter: blur(8px);
  -webkit-filter: blur(8px);*/
        }


        #form {
            margin-left: 160px;
            /*  margin-top: 150px;*/
            /*   background-color: #d7b179 ;*/
            background-color: #dde8ea;
            opacity: 0.85;
            color: black;
            margin-top: 30px;
            margin-bottom: 30px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>





    <div class="sidebar">
        <%--    <a href="#image" id="image">--%>
        <img src="https://img.icons8.com/color/81/000000/person-female.png" id="image" alt="image not found" />
        <%--</a>--%>
        <%-- <a href="#heading">--%>
        <h4 style="margin-left: 60px;"></h4>
        <%--    </a>--%>
        <i class="fa fa-twitter-square" style="font-size: 24px; margin-left: 76px; margin-top: -55px"></i>
        <i class="fa fa-linkedin-square" style="font-size: 24px; margin-left: 10px"></i>
        <i class="fa fa-facebook-square" style="font-size: 24px; margin-left: 10px"></i>

        <hr />
        <a href="../User/BookingDriver.aspx">Driver Request</a>
          <hr />
        <a href="../MechanicFinder.aspx">Mechanic Finder </a>
        <hr />
         <a href="../User/RequestPage.aspx">Request</a>
        <hr />
        <a href="../RoadSideAssistance.aspx">Our Services</a>
        
        <hr />
        <a href="Feedback.aspx">Feedback </a>
      
        <hr />
     <%--   <a href="../RequestPage.aspx">Request Page </a>--%>



      <%--  <hr />--%>
        <a href="../../HomePage.aspx">LogOut</a>
    </div>


    <div class="container-fluid" style="background-image: url(../images/road3.jpg); background-size: cover;">
        <%--         style="background-image:url(../images/car1.jpg);   background-size: cover; "--%>


        <%--  <div class="rows"  ></div>--%>
        <%--  <img src="../images/car2.jpg" id="#bg" alt="image not found"/>--%>

        <div class="rows">
            <div class="col-md-4"></div>
            <div class="col-md-4  " id="form">




                <h1 class=" text-center rounded-3">Booking Request for Driver </h1>
                <%--   <form runat="server">--%>
                <form id="form2" runat="server">
                    <%--   <div class="mb-3 ">
                            <label for="id" class="form-label">Driver ID</label>

                            <asp:TextBox ID="id" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id" ErrorMessage="Driver ID is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>--%>


                    <div class="mb-3 ">
                        <label for="fullname" class="form-label">Full Name</label>

                        <asp:TextBox ID="fnameTb" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="fanmevalidator" runat="server" ControlToValidate="fnameTb" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="email" class="form-label">Email address</label>
                        <asp:TextBox ID="EmailTb" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="emailvalidation" runat="server" ControlToValidate="EmailTb" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTb" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="mobno" class="form-label">Mobile Number</label>
                        <asp:TextBox ID="MobTb" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="mnumbervalidator" runat="server" ControlToValidate="MobTb" ErrorMessage="Mobile Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>



                    <div class="mb-3 ">
                        <label for="location" class="form-label">Pick Up Location</label>
                        &nbsp;<asp:TextBox ID="location" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="usernamevalidator" runat="server" ControlToValidate="location" ErrorMessage="Pick Up Location is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="destination" class="form-label">Destination</label>
                        &nbsp;<asp:TextBox ID="destination" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="destination" ErrorMessage="Destination is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="date" class="form-label">Pick Up Date</label>
                        <%--                         <asp:Calendar ID="Calendar1" runat="server" CssClass="form-control"></asp:Calendar>--%>
                        &nbsp;<asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date" DateFormat="dd/MM/yyyy" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="date" ErrorMessage="Pick Up date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="time" class="form-label">Pick Up Time</label>
                        <asp:TextBox ID="time" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                        <%--                         <asp:Calendar ID="Calendar2" runat="server" CssClass="form-control"></asp:Calendar>--%>
                        <%--                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>--%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="time" ErrorMessage="Pick Up Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>



                    <br />
                    <div class="mb-3">
                        <center>
                            <asp:Button type="submit" class="btn btn-primary " OnClick="DriverRequest" Text="Book Request" runat="server"></asp:Button>
                        </center>

                    </div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </form>

            </div>
        </div>

    </div>

</body>
</html>
