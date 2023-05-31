<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoadSideAssistance.aspx.cs" Inherits="FinalYearProject.RoadSideAssistance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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
            width: 170px;
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
            font-size: 18px;
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
            
            background: white;
            padding: 6px 0;
        }

        .form-inline {
            margin-right: 600px;
        }

        .bs-example {
            font-size: 15px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
     


        .main-content {
            padding-top: 100px;
            padding-bottom: 100px;
        }

        .flex-center {
            align-items: center;
        }

        .accordion-button {
            margin-bottom: 10px;
        }

        .accordion-body {
            margin-top: 15px;
            padding: 25px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
            margin-bottom: 10px;
            font-size: 15px;
        }

        .circle-icon {
            height: 50px;
            width: 50px;
            border-radius: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #2b4eff;
            border: 5px solid #b2bfff;
            color: #fff;
            /margin-left: -20px;/
            margin-left: 30px;
            margin-right: 10px;
            transform: scale(1.2);
        }

        .accordion-item {
            border: 0px !important;
            font-size: 15px;
        }

        .accordion-button:not(.collapsed) {
            border: 0px !important;
            color: #0c63e4;
            background-color: #ffffff;
            box-shadow: inset 0 0px 0 rgb(0 0 0 / 13%);
        }

        span {
            font-size: 15px;
        }

        td {
            padding: 15px;
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
        /slider/

        .heading {
    text-align: center;
    color: #454343;
    font-size: 30px;
    font-weight: 700;
    position: relative;
    margin-bottom: 70px;
    text-transform: uppercase;
    z-index: 999;
}
.white-heading{
    color: #ffffff;
}
.heading:after {
    content: ' ';
    position: absolute;
    top: 100%;
    left: 50%;
    height: 40px;
    width: 180px;
    border-radius: 4px;
    transform: translateX(-50%);
    background: url(img/heading-line.png);
    background-repeat: no-repeat;
    background-position: center;
}
.white-heading:after {
    background: url(https://i.ibb.co/d7tSD1R/heading-line-white.png);
    background-repeat: no-repeat;
    background-position: center;
}

.heading span {
    font-size: 18px;
    display: block;
    font-weight: 500;
}
.white-heading span {
    color: #ffffff;
}
/-----Testimonial-------/

.testimonial:after {
    position: absolute;
    top: -0 !important;
    left: 0;
    content: " ";
    background: url(img/testimonial.bg-top.png);
    background-size: 100% 100px;
    width: 100%;
    height: 100px;
    float: left;
    z-index: 99;
}

.testimonial {
    min-height: 375px;
    position: relative;
    background: url(https://img.freepik.com/premium-photo/empty-space-product-show-dark-room-with-light-spot-background_152359-580.jpg);
    padding-top: 50px;
    padding-bottom: 50px;
    background-position: center;
        background-size: cover;
}
#testimonial4 .carousel-inner:hover{
  cursor: -moz-grab;
  cursor: -webkit-grab;
}
#testimonial4 .carousel-inner:active{
  cursor: -moz-grabbing;
  cursor: -webkit-grabbing;
}
#testimonial4 .carousel-inner .item{
  overflow: hidden;
}

.testimonial4_indicators .carousel-indicators{
  left: 0;
  margin: 0;
  width: 100%;
  font-size: 0;
  height: 20px;
  bottom: 15px;
  padding: 0 5px;
  cursor: e-resize;
  overflow-x: auto;
  overflow-y: hidden;
  position: absolute;
  text-align: center;
  white-space: nowrap;
}
.testimonial4_indicators .carousel-indicators li{
  padding: 0;
  width: 14px;
  height: 14px;
  border: none;
  text-indent: 0;
  margin: 2px 3px;
  cursor: pointer;
  display: inline-block;
  background: #ffffff;
  -webkit-border-radius: 100%;
  border-radius: 100%;
}
.testimonial4_indicators .carousel-indicators .active{
  padding: 0;
  width: 14px;
  height: 14px;
  border: none;
  margin: 2px 3px;
  background-color: #9dd3af;
  -webkit-border-radius: 100%;
  border-radius: 100%;
}
.testimonial4_indicators .carousel-indicators::-webkit-scrollbar{
  height: 3px;
}
.testimonial4_indicators .carousel-indicators::-webkit-scrollbar-thumb{
  background: #eeeeee;
  -webkit-border-radius: 0;
  border-radius: 0;
}

.testimonial4_control_button .carousel-control{
  top: 175px;
  opacity: 1;
  width: 40px;
  bottom: auto;
  height: 40px;
  font-size: 10px;
  cursor: pointer;
  font-weight: 700;
  overflow: hidden;
  line-height: 38px;
  text-shadow: none;
  text-align: center;
  position: absolute;
  background: transparent;
  border: 2px solid #ffffff;
  text-transform: uppercase;
  -webkit-border-radius: 100%;
  border-radius: 100%;
  -webkit-box-shadow: none;
  box-shadow: none;
  -webkit-transition: all 0.6s cubic-bezier(0.3,1,0,1);
  transition: all 0.6s cubic-bezier(0.3,1,0,1);
}
.testimonial4_control_button .carousel-control.left{
  left: 7%;
  top: 50%;
  right: auto;
}
.testimonial4_control_button .carousel-control.right{
  right: 7%;
  top: 50%;
  left: auto;
}
.testimonial4_control_button .carousel-control.left:hover,
.testimonial4_control_button .carousel-control.right:hover{
  color: #000;
  background: #fff;
  border: 2px solid #fff;
}

.testimonial4_header{
  top: 0;
  left: 0;
  bottom: 0;
  width: 550px;
  display: block;
  margin: 30px auto;
  text-align: center;
  position: relative;
}
.testimonial4_header h4{
  color: #ffffff;
  font-size: 30px;
  font-weight: 600;
  position: relative;
  letter-spacing: 1px;
  text-transform: uppercase;
}

.testimonial4_slide{
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 70%;
  margin: auto;
  padding: 20px;
  position: relative;
  text-align: center;
}
.testimonial4_slide img {
    top: 0;
    left: 0;
    right: 0;
    width: 136px;
    height: 136px;
    margin: auto;
    display: block;
    color: #f2f2f2;
    font-size: 18px;
    line-height: 46px;
    text-align: center;
    position: relative;
    border-radius: 50%;
    box-shadow: -6px 6px 6px rgba(0, 0, 0, 0.23);
    -moz-box-shadow: -6px 6px 6px rgba(0, 0, 0, 0.23);
    -o-box-shadow: -6px 6px 6px rgba(0, 0, 0, 0.23);
    -webkit-box-shadow: -6px 6px 6px rgba(0, 0, 0, 0.23);
}
.testimonial4_slide p {
    color: #ffffff;
    font-size: 20px;
    line-height: 1.4;
    margin: 40px 0 20px 0;
}
.testimonial4_slide h4 {
  color: #ffffff;
  font-size: 22px;
}

.testimonial .carousel {
	padding-bottom:50px;
}
.testimonial .carousel-control-next-icon, .testimonial .carousel-control-prev-icon {
    width: 35px;
    height: 35px;
}
/* ------testimonial  close-------*/
        /slider/
        /rsa/
      @import url('https://fonts.googleapis.com/css?family=Roboto+Mono');
 * {
	 box-sizing: border-box;
	 font-weight: normal;
}
 .bodys {
	 
	 
	 text-align: center;
	 font-family: 'Roboto Mono';
	 padding: 1em;
}
 h1 {
	 font-size: 2.2em;
     color:black;
}
 .flip {
	 position: relative;
}
 .flip > .front, .flip > .back {
	 display: block;
	 transition-timing-function: cubic-bezier(0.175, 0.885, 0.32, 1.275);
	 transition-duration: 0.5s;
	 transition-property: transform, opacity;
}
 .flip > .front {
	 transform: rotateY(0deg);
}
 .flip > .back {
	 position: absolute;
	 opacity: 0;
	 top: 0px;
	 left: 0px;
	 width: 100%;
	 height: 100%;
	 transform: rotateY(-180deg);
}
 .flip:hover > .front {
	 transform: rotateY(180deg);
}
 .flip:hover > .back {
	 opacity: 1;
	 transform: rotateY(0deg);
}
 .flip.flip-vertical > .back {
	 transform: rotateX(-180deg);
}
 .flip.flip-vertical:hover > .front {
	 transform: rotateX(180deg);
}
 .flip.flip-vertical:hover > .back {
	 transform: rotateX(0deg);
}
 .flip {
	 position: relative;
	 display: inline-block;
	 margin-right: 2px;
	 margin-bottom: 1em;
	 width: 400px;
}
 .flip > .front, .flip > .back {
	 display: block;
	 color: white;
	 width: inherit;
	 background-size: cover !important;
	 background-position: center !important;
	 height: 220px;
	 padding: 1em 2em;
	 background: #313131;
	 border-radius: 10px;
}
 .flip > .front p, .flip > .back p {
	 font-size: 0.9125rem;
	 line-height: 160%;
	 color: #999;
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

<%--                <li class="nav-item" style="margin-left: 350px">
                    <a class="nav-link" href="../User/SignUp.aspx" style="color: black">SignUp</a>
                </li>--%>
                <li class="nav-item">
                    <a class="nav-link" href="../User/BookingDriver.aspx" style="color: black">LogOut</a>
                </li>
            </ul>
        </div>
    </nav>

    <section id="roadassistance">
        <img class="d-block w-100" src="https://cdn.dribbble.com/users/207059/screenshots/16573461/ms_11.gif" alt="First slide" style="width: 100px; height: 600px" />
        <br />
    </section>
    <%--  <section id="content">--%>
    
    <section class="testimonial text-center">
        <div class="container">

            <div class="heading white-heading">
                What is 24x7 RoadSide Assistance?
            </div>
            <div id="testimonial4" class="carousel slide testimonial4_indicators testimonial4_control_button thumb_scroll_x swipe_x" data-ride="carousel" data-pause="hover" data-interval="5000" data-duration="2000">
             
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <div class="testimonial4_slide">
                            <p>  Roadside Assistance or a Breakdown cover is an add-on you can opt for in your <b>comprehensive
            car insurance</b> or <b>two-wheeler insurance policy</b> , to help you in times where you need roadside assistance,
            a.k.a need some help when you’re stuck on the road.
                        <br />
                        <br />

                        Whether it’s a small mishap or a flat tyre, a 24x7 roadside assistance cover can help you in times of such troubles, 
            without even accounting it as a claim.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testimonial4_slide">
                          <h1> <b>  <p> How much does a Roadside Assistance cover cost?</p> </b></h1>
                                <br />
                            <p>  You can opt for a Roadside or Breakdown Assistance cover in your <b>comprehensive car</b> or<b> bike insurance policy </b>
                        for a standard minimum addition in your premium.<br />
                        At Quick Care, for a car it could cost you an additional<b> Rs 102</b>, while for a two-wheeler it could cost you<b> Rs 40.</b></p>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testimonial4_slide">
                           <h1> <b>  <p> How does a Roadside Assistance cover work? </p> </b></h1>
                            <p> Once you’ve already opted for a Roadside/Breakdown Assistance cover in your  car or bike insurance plan,
                        using the Roadside Assistance cover in times of need is easy!
                        
                        <br /><br />

  All you need to do in times of troubles (when you need the service) is give us a ring at<b> 1800-103-4448</b>
                        and keep your policy details handy and we’ll be there for you in no time.
                        
                        

                       
                        </div>
                    </div>
                     <div class="carousel-item">
                        <div class="testimonial4_slide">
                           
                        
                        

                       <p>  the Roadside Assistance cover comes with 24x7 support and takes care of the convenience
                        and labor costs too. 
                        We serve you up to 500 kms from your city (unlike others covering only 100 kms. <br />
                        
                        We would arrange for appropriate towing services to the nearest. Quick Care Authorized Repair Shop. Provided always that:-
                           <br /> We will bear the cost of Towing the Insured Vehicle up to 50 kms from the place of accident or breakdown.<br />
                            
                         Any cost and expenses pertaining to towing of the Insured Vehicle over and above 50 Kms shall be borne by You. 
                             </p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#testimonial4" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#testimonial4" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </section>
    <br />
    <br />
    <br />



    <%--     </section>--%>


        <%--     <section>--%>
    <!-- horizontal -->
    <center>
       <h1 style:"font-weight: bold"> <b>What is Covered in a RSA Cover - Let’s dive into the details</b></h1> <br /><br />
    </center>

<div class="bodys">
<div class="flip">
    <div class="front" style="background-image: url(https://media.tenor.com/qbZKKroIV1oAAAAM/dead-battery.gif)">
       <h1>Flat Battery</h1>
    </div>
    <div class="back">
       
       <h2> This is dedicated for times when your car or two-wheeler is at a halt due to issues in your battery. In this case, your RSA cover will be there for you, 
           including paying for all labor and conveyance costs involved. </h2>
    </div>
</div>
<div class="flip">
    <div class="front" style="background-image: url(https://media.tenor.com/btwRSh2Pr00AAAAM/tension-force-car.gif)">
       <h1>Towing Facility</h1>
    </div>
    <div class="back">
      <h2>   In the case of serious cases where your vehicle can’t be repaired on spot and is required to be sent out to a workshop or garage for servicing, your roadside assistance cover would benefit
                            you by providing you with the required Towing Facility.</h2>
    </div>
</div>
<div class="flip">
    <div class="front" style="background-image: url(https://img.philkotse.com/2019/03/15/b7Fg1q9w/flat-tire-slow-1625.gif)">
       <h1> Flat Tyres</h1>
    </div>
    <div class="back">
       
       <h2> We’ve all had a flat tyre at some point in life! God forbid you are stranded with your vehicle 
                            due to a flat tyre and have nowhere else to turn for help, your Roadside Assistance cover will benefit 
                            you by arranging for the right technicians to replace and help you out with a spare tyre. </h2>
    </div>
</div>

<br />
<br />

<!-- vertical -->
  
<div class="flip flip-vertical">
    <div class="front" style="background-image: url(https://media4.giphy.com/media/1qXjniLSOpxEmscAu6/200w.gif?cid=6c09b952b7l6hsmab9wtjr305je47m3n5srv4q8gp3t84cg5&rid=200w.gif&ct=g)">
       <h1 >Minor Repairs</h1>
    </div>
    <div class="back">
       <h2> Sometimes, things happen and you’re just left out there wondering why your car or bike won’t start anymore!
                            For unfortunate situations like that your Roadside Assistance could benefit you by providing for the repairs
                            required at the need of the hour.</h2>
    </div>
</div>
<div class="flip flip-vertical">
    <div class="front" style="background-image: url(https://media.wired.com/photos/59266366f3e2356fd8009136/master/w_2560%2Cc_limit/MobileHealthAp_TA.gif)">
       <h1 > Medical Coordination</h1>
    </div>
    <div class="back">
       <h2> In unfortunate situations where not only your vehicle, but even you end up getting into trouble due to an accident midway,
                            your Roadside Assistance cover would also help coordinating with the nearest medical center so that
                            your medical needs are well taken care of. </h2>
    </div>
</div>
<div class="flip flip-vertical">
    <div class="front" style="background-image: url(https://media4.giphy.com/media/l2R05wdisVHTOuchy/giphy.gif)">
       <h1 >Fuel Assistance </h1>
    </div>
    <div class="back">
       <h2>It happens to the best of us! Before you realize it, your fuel tank is already exhausted! 
                            In such cases, your cover would help you by arranging for up to 5 litres of fuel to the location you’re stuck at!  </h2>
    </div>
</div>
</div>
    <%--     </section>--%>

  
                       

    


                                   

         
    <br /><br />
    <center>
        <h1><b>Exclusions and Other Things to keep in mind for Roadside Assistance</b></h1>
    </center>
    <br />
    <div class="bs-example">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center" style="background-color: #d9ecff">
                    <br />
                    <p>
                        We’re pretty upfront about our terms and conditions so that when it comes to claims, 
                        you’re not in for a surprise. With respect to  Roadside Assistance cover, 
                        here are some things you should keep in mind:
                         <ul class="text-left">

                             <li>While our Roadside Assistance cover doesn’t account for as a claim, you can use the cover maximum, 
                                for up to 4 times in one policy year.</li>
                             <br />
                             <li>You can avail Fuel Assistance up to 2 times in your policy period.</li>
                             <br />
                             <li>Roadside Assistance should only be used for times when you have no other option. 
                                 For instance; if your vehicle can be safely transferred without any trouble to a nearby workshop or dealer,
                                 then roadside assistance won’t be applicable in such a case.</li>
                             <br />
                             <li>Your Roadside Assistance cover covers for repair and labour costs too, 
                                 but only up to 45 minutes of roadside assistance, at the spot of where the accident took place.</li>
                             <br />
                             <li>Similar to all car and bike claims, you can’t be covered for if you were found driving drunk 
                                 or without a valid license.</li>
                             <ul />
                    </p>

                </div>
            </div>
        </div>
    </div>
    <center>
        <br />
        <h1><b>FAQs</b></h1>
    </center>
    <%--  <div class="col-sm-6 accordion_one">
        <div class="panel-group" id="accordionFourLeft">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion_oneLeft" href="#collapseFiveLeftone" aria-expanded="false" class="collapsed">Why Font Awesome used
                        </a>
                    </h4>
                </div>
                <div id="collapseFiveLeftone" class="panel-collapse collapse" aria-expanded="false" role="tablist" style="height: 0px;">
                    <div class="panel-body">
                        <div class="img-accordion">
                            <img src="https://img.icons8.com/color/81/000000/person-female.png" alt="">
                        </div>
                        <div class="text-accordion">
                            <p>
                                Why Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome used
                            </p>
                        </div>
                    </div>
                    <!-- end of panel-body -->
                </div>
            </div>
            <!-- /.panel-default -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion_oneLeft" href="#collapseFiveLeftTwo" aria-expanded="false">Why Font Awesome used and  its benefits
                        </a>
                    </h4>
                </div>
                <div id="collapseFiveLeftTwo" class="panel-collapse collapse" aria-expanded="false" role="tablist" style="height: 0px;">
                    <div class="panel-body">
                        <div class="img-accordion">
                            <img src="https://img.icons8.com/color/81/000000/person-female.png" alt="">
                        </div>
                        <div class="text-accordion">
                            <p>
                                Why Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome usedWhy Font Awesome used
                            </p>
                        </div>
                    </div>
                    <!-- end of panel-body -->
                </div>
            </div>
            <!-- /.panel-default -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion_oneLeft" href="#collapseFiveLeftThree" aria-expanded="false">Why Font Awesome used for its own 
                        </a>
                    </h4>
                </div>
                <div id="collapseFiveLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                    <div class="panel-body">
                        <div class="img-accordion">
                            <img src="https://img.icons8.com/color/81/000000/person-female.png" alt="">
                        </div>
                        <div class="text-accordion">
                            <p>
                                Why Font Awesome used for its own Why Font Awesome used for its own Why Font Awesome used for its own Why Font Awesome used for its own Why Font Awesome used for its own Why Font Awesome used for its own Why Font Awesome used for its own
                            </p>
                        </div>
                    </div>
                    <!-- end of panel-body -->
                </div>
            </div>
            <!-- /.panel-default -->
        </div>
        <!--end of /.panel-group-->
    </div>
</center>--%>

    <section id="FAQ">
    <center>

      <%--  <div class="accordion" id="accordionExample">
            <div class="accordion-item">

                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <div class="circle-icon"><i class="fa fa-question"></i></div>
                        <span class="text-center">How to Create FAQ Section</span>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body"><strong>This is the first item's accordion body.</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </div>
                </div>
            </div>
        </div>--%>


        <div class="accordion" id="accordionExample">
            <div class="accordion-item">

                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <div class="circle-icon"><i class="fa fa-question"></i></div>
                        <span class="text-center">Is a Roadside Assistance worth it?</span>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body"><strong>Given the various benefits of a Roadside Assistance cover, it’s definitely worth it as you never know when you may need the service!</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </div>
                </div>
            </div>
        </div>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item">

                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <div class="circle-icon"><i class="fa fa-question"></i></div>
                        <span class="text-center">How much will it cost me to get Roadside Assistance for my car?</span>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body"><strong>A Roadside or Breakdown Assistance cover will cost you an additional Rs 102 in your car insurance premium..</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </div>
                </div>
            </div>
        </div>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item">

                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <div class="circle-icon"><i class="fa fa-question"></i></div>
                        <span class="text-center">How much will it cost me to get a Roadside Assistance for my two-wheeler?</span>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body"><strong>we charge a standard minimum fee of Rs 40 to your premium if you opt for a Roadside Assistance.</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </div>
                </div>
            </div>
        </div>

    </center>
</section>

    <section id="footer">
        <div class="container">
            <div class="row text-center text-xs-center text-sm-left text-md-left">
                <div class="col-xs-12 col-sm-4 col-md-4">
                    <br /><br />
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
                     <br /><br />
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
                     <br /><br />
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
                <hr />
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                    <p class="h6">© Copyright 2021 - Company Name.  All rights reserved.  <a class="text-green ml-2" href="#" target="_blank">JavaTpoint </a></p>
                </div>
                <hr />
            </div>
        </div>
    </section>


</body>
</html>