<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoadAssistance.aspx.cs" Inherits="FinalYearProject.RoadAssistance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
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

              #logo{
            width:150px;
            height:50px;
            margin-left:25px;
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
    font-family:"open-sans";
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
    background:#11ADE8;
    padding: 6px 0;
}
        .form-inline {
            margin-right: 600px;
        }
    </style>
</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top  mynav">
      <%--  <a class="navbar-brand" href="#">Navbar</a>--%>
         <img src="images/Logo2.png" alt="logo" id="logo"/>
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
                    <a class="nav-link" href="../User/SignUp.aspx" style="color: black">SignUp</a>
                </li>
                <li class="nav-item" >
                    <a class="nav-link" href="Login.aspx" style="color: black">Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
