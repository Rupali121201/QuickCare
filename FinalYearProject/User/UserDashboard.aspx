<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="FinalYearProject.User.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

<%--    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>
    <link rel="stylesheet" href="style.css" />

    <style>
        .home {
            position: absolute;
        }



        .mynav {
            position: absolute;
            background: !important;
            font-size: 20px;
            font-family: Arial, Helvetica, sans-serif;
            opacity: 0.8;
        }

        .navbar-brand {
            font-size: 25px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        #logo {
            width: 150px;
            height: 50px;
            margin-left: 25px;
        }

        .nav-link {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: black;
            margin-left: 10px;
        }

        /*   .nav-item:hover{
            background-color: lightgray;
            border-radius:8px;
            padding:1px;
            
        }*/

        .navbar-light .navbar-nav .nav-link {
            display: inline;
            text-transform: uppercase;
            font-size: 13px;
            text-decoration: none;
            color: black;
            font-family: "open-sans";
            transition: 0.3s ease;
            border-top: 4px solid transparent;
            border-bottom: 4px solid transparent;
            margin: 0 20px;
            padding: 20px 0;
        }

        .navbar-nav .nav-link.active,
        .navbar-nav .nav-link:hover {
            border-top: 4px solid #000000;
            border-bottom: 4px solid #000000;
            /*background: #11ADE8;*/
            background: #b5dcff;
            padding: 6px 0;
        }

        .form-inline {
            margin-right: 600px;
        }

        .container-fluid{
            font-size:15px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top  mynav">
        <%--  <a class="navbar-brand" href="#">Navbar</a>--%>
        <img src="../images/Logo2.png" alt="logo" id="logo" />
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#home" style="margin: 0px 20px 0px 120px;">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" style="margin: 0px 20px 0px 20px; color: black" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#services">24/7 On-road assitance</a>
                        <a class="dropdown-item" href="#services">Drivers Availibility</a>
                        <a class="dropdown-item" href="#services">Car Servicing</a>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
            </ul>
            <%--    <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="margin:0px 20px 0px 20px; color:black"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>--%>

            <ul class="navbar-nav mr-auto">

                <li class="nav-item" style="margin-left: 350px">
                    <a class="nav-link" href="#home" style="color: black">USER</a>
                </li>
              <%--  <li class="nav-item">
                    <a class="nav-link" href="Login.aspx" style="color: black">Login</a>
                </li>--%>
            </ul>
        </div>
    </nav>


    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
               
                <img class="d-block w-100" src="../images/bgr2.jpg" alt="First slide" style="width: 800px; height: 600px""/ >
            </div>
            <%--  <div class="carousel-item">
                    <img class="d-block w-100" src="images/home2.jpg" alt="Second slide" style="width: 800px; height: 600px">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home1.jpg" alt="Third slide" style="width: 800px; height: 600px">
                </div>--%>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

     <form id="form2" runat="server">
     <div class="container-fluid">
      <%--  <div class="rows"  ></div>--%>
       
        <div class="rows" >
            <div class="col-md-4"></div>
            <div class="col-md-4  " id="form">
                <br /><br />
                <h1 class="text-primary text-center rounded-3">Booking Request </h1>
             <%--   <form runat="server">--%>
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
                        &nbsp;<asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
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
                            <asp:Button type="submit" class="btn btn-primary " OnClick="btn_click" Text="Book Request"  runat="server"></asp:Button>
                        </center>

                    </div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />

               <%-- </form>--%>
            </div>
        </div>
            
    </div>
</form>
</body>
</html>
