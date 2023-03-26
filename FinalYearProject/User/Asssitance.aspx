<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asssitance.aspx.cs" Inherits="FinalYearProject.Assistance" %>

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


        .box1 {
            width: 1005px;
            height: 1000px;
            padding: 50px;
            border: 1px solid red;
            margin-left: 162px;
            background-color: blue;
        }

        .box2 {
            width: 1005px;
            height: 1000px;
            padding: 10px;
            background-color: red;
        }

        .box1, .box2 {
            display: inline;
            text-align: center;
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

    <section id="roadassistance">
        <img class="d-block w-100" src="images/home2.jpg" alt="First slide" style="width: 100px; height: 600px">
    </section>
    <%--  <section id="content">--%>

    <%--     </section>--%>
    <center>
        <h1><b>What is 24x7 RoadSide Assistance? </b></h1>
    </center>

    <div class="bs-example">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 bg-light text-center">


                    <br />
                    <p class="text-left">
                        Roadside Assistance or a Breakdown cover is an add-on you can opt for in your <b>comprehensive
            car insurance</b> or<b>two-wheeler insurance policy</b> , to help you in times where you need roadside assistance,
            a.k.a need some help when you’re stuck on the road.
                        <br />
                        <br />

                        Whether it’s a small mishap or a flat tyre, a 24x7 roadside assistance cover can help you in times of such troubles, 
            without even accounting it as a claim.
                    </p>
                    <br />

                    <h3 class="text-left"><b>How much does a Roadside Assistance cover cost?</b></h3>
                    <p class="text-left">
                        You can opt for a Roadside or Breakdown Assistance cover in your <b>comprehensive car</b> or<b> bike insurance policy </b>
                        for a standard minimum addition in your premium.<br />
                        At Digit, for a car it could cost you an additional<b> Rs 102</b>, while for a two-wheeler it could cost you<b> Rs 40.</b>
                    </p>

                    <br />
                    <h3 class="text-left"><b>How does a Roadside Assistance cover work?</b></h3>
                    <p class="text-left">
                        Once you’ve already opted for a Roadside/Breakdown Assistance cover in your Digit car or bike insurance plan,
                        using the Roadside Assistance cover in times of need is easy!
                        <br />
                        <br />

                        All you need to do in times of troubles (when you need the service) is give us a ring at<b> 1800-103-4448</b>
                        and keep your policy details handy and we’ll be there for you in no time.
                        <br />
                        <br />

                        With Digit, the Roadside Assistance cover comes with 24x7 support and takes care of the convenience
                        and labor costs too. We <b>serve you up to 500 kms</b> from your city (unlike others covering only 100 kms)<br />
                        <br />
                        We would arrange for appropriate towing services to the nearest<b> Digit Authorized Repair Shop.</b> Provided always that:-
                        <ul class="text-left">

                            <li>We will bear the cost of Towing the Insured Vehicle up to 50 kms from the place of accident or breakdown.</li>
                            <br />
                            <li>Any cost and expenses pertaining to towing of the Insured Vehicle over and above 50 Kms shall be borne by You. </li>
                            <ul />
                    </p>
                    </li>
                </div>
            </div>
        </div>
    </div>
    <br />
    <center>
        <h1><b>What is Covered in a RSA Cover - Let’s dive into the details</b></h1>
    </center>

    <div class="bs-example">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 bg-light text-center">
                    <center>
                        <%-- <h1 >Gallery</h1>--%>
                        <br />
                        <br />
                        <table>
                            <tr></tr>
                            <tr>

                                <td>

                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Flat Battery</b></h3>
                                        <p class="text-center">
                                            This is dedicated for times when your car or two-wheeler is at a halt
                               due to issues in your battery. 
                            In this case, your RSA cover will be there for you, 
                            including paying for all labor and conveyance costs involved.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>

                                </td>
                                <td>

                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Spare Keys</b></h3>
                                        <p class="text-center">
                                            Whether you like it or not, people lose their car keys more often than they’d think they do!
                            In such tricky situations when you're stuck out of nowhere without your keys,
                            your roadside assistance cover would arrange for pickup and delivery of your spare keys or,
                            in the meanwhile also help unlock your car with the help of technicians.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Flat Tyres</b></h3>
                                        <p class="text-center">
                                            We’ve all had a flat tyre at some point in life! God forbid you are stranded with your vehicle 
                            due to a flat tyre and have nowhere else to turn for help, your Roadside Assistance cover will benefit 
                            you by arranging for the right technicians to replace and help you out with a spare tyre.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>

                                </td>

                                <td>

                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Minor Repairs</b></h3>
                                        <p class="text-center">
                                            Sometimes, things happen and you’re just left out there wondering why your car or bike won’t start anymore!
                            For unfortunate situations like that your Roadside Assistance could benefit you by providing for the repairs
                            required at the need of the hour.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>


                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Towing Facility</b></h3>
                                        <p class="text-center">
                                            In the case of serious cases where your vehicle can’t be repaired on spot and is required
                            to be sent out to a workshop or garage for servicing, your roadside assistance cover would benefit
                            you by providing you with the required Towing Facility.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>


                                </td>

                                <td>
                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Urgent Message Relay to Relatives</b></h3>
                                        <p class="text-center">
                                            In an unfortunate case where you need to inform your relatives with an urgent message of the situation,
                            we will take care of the same!
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>

                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Medical Coordination</b></h3>
                                        <p class="text-center">
                                            In unfortunate situations where not only your vehicle, but even you end up getting into trouble due to an accident midway,
                            your Roadside Assistance cover would also help coordinating with the nearest medical center so that
                            your medical needs are well taken care of.
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>


                                </td>

                                <td>
                                    <div class="card" style="width: 50rem; height: 20rem;">
                                        <h3 class="text-center"><b>Fuel Assistance</b></h3>
                                        <p class="text-center">
                                            It happens to the best of us! Before you realize it, your fuel tank is already exhausted! 
                            In such cases, your cover would help you by arranging for up to 5 litres of fuel to the location you’re stuck at! 
                                        </p>
                                        <div class="card-body">
                                        </div>
                                    </div>

                                </td>
                            </tr>


                        </table>
                        <br />
                        <br />

                    </center>
                </div>
            </div>
        </div>
    </div>
    <br />
    <center>
        <h1><b>Exclusions and Other Things to keep in mind for Roadside Assistance</b></h1>
    </center>
    <br />
    <div class="bs-example">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 bg-light text-center">
                    <br />
                    <p>
                        We’re pretty upfront about our terms and conditions so that when it comes to claims, 
                        you’re not in for a surprise. With respect to Digit’s Roadside Assistance cover, 
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

    <div class="accordion w-100" id="basicAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseOne" aria-expanded="false" aria-controls="collapseOne">
                    Question #1
                </button>
            </h2>
            <div id="basicAccordionCollapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                data-mdb-parent="#basicAccordion" style="">
                <div class="accordion-body">
                    <strong>This is the first item's accordion body.</strong> It is shown by default,
        until the collapse plugin adds the appropriate classes that we use to style each
        element. These classes control the overall appearance, as well as the showing and
        hiding via CSS transitions. You can modify any of this with custom CSS or overriding
        our default variables. It's also worth noting that just about any HTML can go within
        the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Question #2
                </button>
            </h2>
            <div id="basicAccordionCollapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                data-mdb-parent="#basicAccordion" style="">
                <div class="accordion-body">
                    <strong>This is the second item's accordion body.</strong> It is hidden by default,
        until the collapse plugin adds the appropriate classes that we use to style each
        element. These classes control the overall appearance, as well as the showing and
        hiding via CSS transitions. You can modify any of this with custom CSS or overriding
        our default variables. It's also worth noting that just about any HTML can go within
        the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
                    data-mdb-target="#basicAccordionCollapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Question #3
                </button>
            </h2>
            <div id="basicAccordionCollapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                data-mdb-parent="#basicAccordion" style="">
                <div class="accordion-body">
                    <strong>This is the third item's accordion body.</strong> It is hidden by default,
        until the collapse plugin adds the appropriate classes that we use to style each
        element. These classes control the overall appearance, as well as the showing and
        hiding via CSS transitions. You can modify any of this with custom CSS or overriding
        our default variables. It's also worth noting that just about any HTML can go within
        the <code>.accordion-body</code>, though the transition does limit overflow.
                </div>
            </div>
        </div>
    </div>

</body>


</html>
