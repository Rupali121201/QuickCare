<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="FinalYearProject.User.Feedback" %>

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
                    background-color: #000000bf;
                    color: white;
                }

                .sidebar a:hover:not(.active) {
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
        }


        #form {
            margin-left: 160px;
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
        <a href="../Map.aspx">Mechanic Request </a>
        <hr />
        <a href="../RoadSideAssistance.aspx">RoadSide Assistance</a>
        <hr />
        <a href="UpdateDriver.aspx">Update Details </a>
        <hr />
        <a href="Feedback.aspx">Feedback </a>
        <%--     <hr />--%>
        <%--  <a href="#contact">Request</a>
        <hr />
        <a href="#about">Search</a>--%>

        <hr />
        <a href="HomePage.aspx">LogOut</a>
    </div>


    <div class="container-fluid" style="background-image: url(../images/road3.jpg); background-size: cover;">
        <%--         style="background-image:url(../images/car1.jpg);   background-size: cover; "--%>


        <%--  <div class="rows"  ></div>--%>
        <%--  <img src="../images/car2.jpg" id="#bg" alt="image not found"/>--%>

        <div class="rows">
            <div class="col-md-4"></div>
            <div class="col-md-4  " id="form">




                <h1 class=" text-center rounded-3">Feedback Form </h1>
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

                    <div class="mb-3">
                        <label for="service" class="form-label">Service Taken</label>
                        <asp:DropDownList ID="service" runat="server" CssClass="form-control">
                            <asp:ListItem>Select</asp:ListItem>

                            <asp:ListItem> Booked Driver</asp:ListItem>
                            <asp:ListItem> Booked Mechanic</asp:ListItem>
                            <asp:ListItem> Roadside Assistance</asp:ListItem>

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="servicevalidator" runat="server" ControlToValidate="service" ErrorMessage="Service is Required" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

                    </div>

                    <div class="mb-3 ">
                        <label for="name" class="form-label">Name of Driver/Mechanic</label>
                        <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3 ">
                        <label for="rating" class="form-label">Rating</label>
                        <asp:DropDownList ID="rating" runat="server" CssClass="form-control">
                            <asp:ListItem>Select</asp:ListItem>

                            <asp:ListItem>1 star</asp:ListItem>
                            <asp:ListItem>2 star</asp:ListItem>
                            <asp:ListItem>3 star</asp:ListItem>
                            <asp:ListItem>4 star</asp:ListItem>
                            <asp:ListItem> 5 star</asp:ListItem>

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="ratingvalidator" runat="server" ControlToValidate="rating" ErrorMessage="Rating is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                      <div class="mb-3 ">
                        <label for="suggestion" class="form-label">Feedback</label>

                        <asp:TextBox ID="feedback" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="fedbackvalidator" runat="server" ControlToValidate="name" ErrorMessage="Feedback is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>





                    <br />
                    <div class="mb-3">
                        <center>
                            <asp:Button type="submit" class="btn btn-primary " OnClick="FeedbackSubmit" Text="Submit" runat="server"></asp:Button>
                        </center>
                        <br />
                    </div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </form>

            </div>
        </div>

    </div>
</body>
</html>
