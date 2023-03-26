<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FinalYearProject.HomePage" %>

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
            background: #11ADE8;
            padding: 6px 0;
        }

        .form-inline {
            margin-right: 600px;
        }

        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

        section {
            padding: 60px 0;
        }

            section .section-title {
                text-align: center;
                color: #007b5e;
                margin-bottom: 50px;
                text-transform: uppercase;
            }

        #footer {
            background: #514c4c;
        }

            #footer h5 {
                padding-left: 10px;
                border-left: 3px solid #eeeeee;
                padding-bottom: 6px;
                margin-bottom: 20px;
                color: #ffffff;
            }

            #footer a {
                color: #ffffff;
                text-decoration: none !important;
                background-color: transparent;
            }

            #footer ul.social li {
                padding: 3px 0;
            }

                #footer ul.social li a i {
                    margin-right: 5px;
                    font-size: 25px;
                    -webkit-transition: .5s all ease;
                    -moz-transition: .5s all ease;
                    transition: .5s all ease;
                }

                #footer ul.social li:hover a i {
                    font-size: 30px;
                    margin-top: -10px;
                }

                #footer ul.social li a {
                    color: #ffffff;
                }

                    #footer ul.social li a:hover {
                        color: #eeeeee;
                    }

            #footer ul.quick-links li a {
                color: #ffffff;
            }

            #footer ul.quick-links li {
                padding: 3px 0;
                -webkit-transition: .5s all ease;
                -moz-transition: .5s all ease;
                transition: .5s all ease;
            }

                #footer ul.quick-links li:hover {
                    padding: 3px 0;
                    margin-left: 5px;
                    font-weight: 700;
                }

                #footer ul.quick-links li a i {
                    margin-right: 5px;
                }

                #footer ul.quick-links li:hover a i {
                    font-weight: 700;
                }

        @media (max-width:767px) {
            #footer h5 {
                padding-left: 0;
                border-left: transparent;
                padding-bottom: 0px;
                margin-bottom: 10px;
            }
        }

       /* .container{
            background-color:lightskyblue;
        }*/

        h2 {
            padding: 25px 0;
            text-align: center;
            color: #fff;
            background: #7c8490;
        }
    </style>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top  mynav">
        <%--  <a class="navbar-brand" href="#">Navbar</a>--%>
        <img src="images/Logo2.png" alt="logo" id="logo" />
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
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx" style="color: black">Login</a>
                </li>
            </ul>
        </div>
    </nav>


    <section id="home">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/home.jpg" alt="First slide" style="width: 100px; height: 600px">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home2.jpg" alt="Second slide" style="width: 800px; height: 600px">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/home1.jpg" alt="Third slide" style="width: 800px; height: 600px">
                </div>
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
        <center>
            <h2>Services</h2>
        </center>


        <div class="container">
            <div class="row" id="services">
                <div class="col-4">
                    <div class="card">
                        <img src="images/home1.jpg" alt="vehicle breakdown" class="card-img-top" />
                        <div class="card-body">
                            <center>
                                <h5 class="card-title"><b>24/7 On-road assitance </b></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="RoadSideAssistance.aspx" class="btn btn-primary">Take Assistance</a>
                            </center>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card">
                        <img src="images/home4.jpg" alt="vehicle breakdown" class="card-img-top" style="height: 232px" />
                        <div class="card-body">
                            <center>
                                <h5 class="card-title"><b>Drivers Availibility </b></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-primary">Book Driver</a>
                            </center>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card">
                        <img src="images/caroussel1.jpg" alt="vehicle breakdown" class="card-img-top" />
                        <div class="card-body">
                            <center>
                                <h5 class="card-title"><b>Car Servicing </b></h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                <a href="#" class="btn btn-primary">Service Your Car</a>
                            </center>
                        </div>
                    </div>
                </div>


            </div>
        </div>


    </section>

    <section id="footer">
        <div class="container">
            <div class="row text-center text-xs-center text-sm-left text-md-left">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>Quick links </h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Home </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>About </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Get Started </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Videos </a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>Quick links </h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Home </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>About </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Our Services </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Expert Team </a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>Quick links </h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Home </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>About </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Get Started </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Contact </a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                    <ul class="list-unstyled list-inline social text-center">
                        <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>
                </div>
               
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                    <p class="h6">© Copyright 2021 - Company Name.  All rights reserved.  <a class="text-green ml-2" href="#" target="_blank">JavaTpoint </a></p>
                </div>
              
            </div>
        </div>
    </section>

</body>
</html>
