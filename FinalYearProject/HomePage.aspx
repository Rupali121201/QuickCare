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
    <%--why choose us --%>
     <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
      integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
        <%--why choose us --%>

    <style>
        /* why choose us*/
        @import url("https://fonts.googleapis.com/css2?family=Jost&display=swap");

* {
  box-sizing: border-box;
}


bodys{
  padding: 0;
  font-family: "Jost", sans-serif;
}

.center {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: 1fr;
  gap: 2rem;
  margin: 0 auto;
  max-width: 1300px;
}

.card-with-hover {
  position: relative;
  overflow: hidden;
  background: #3085a3;
  text-align: left;
  height: 300px;
  margin: 0;
}

.card-with-hover > img {
  width: 100%;
  height: 100%;
  -o-object-fit: cover;
  object-fit: cover;
  display: block;
  transition: transform 0.35s;
  transform: translate3d(0, 0, 0);
  will-change: transform;
}

.card-with-hover:hover > img {
  transform: scale(1.15) translate3d(0, -20px, 0);
}

.card-with-hover > .card-caption {
  position: absolute;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  background-color: rgba(23, 28, 47, 0.6);
  transition: all 0.3s;
  transform: translate3d(0, 100%, 0);
  will-change: transform;
}

.card-with-hover > .card-caption > .card-caption-content {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  width: auto;
  transition: all 0.3s;
  transform: translate3d(0);
  will-change: transform;
}

.card-with-hover > .card-caption h2 {
  display: block;
  color: #fff;
  margin: 0;
  padding: 1.5rem;
  transition: all 0.3s;
  background-color: rgba(23, 28, 47, 0.4);
  transform: translate3d(0, -100%, 0);
  will-change: transform;
}

.card-with-hover > .card-caption p {
  padding: 0 1rem;
  margin: 0;
  color: #fff;
  opacity: 0;
  transition: opacity 0.35s 0.1s;
  transform: translate3d(0);
  will-change: transform;
}

.card-with-hover:hover > .card-caption {
  transform: translateY(0);
}

.card-with-hover:hover > .card-caption > .card-caption-content {
  top: 25%;
  transform: translate(0, -50%);
}

.card-with-hover:hover > .card-caption h2 {
  background-color: rgba(255, 255, 255, 0);
  transform: translateY(0%);
}

.card-with-hover:hover > .card-caption p {
  opacity: 1;
}
.card-text-wrapper {
  margin-top: 1.2rem;
}

.fab {
  padding: 1rem;
  color: #fff;
}

                /* why choose us*/




/*servies*/

      @import url("https://fonts.googleapis.com/css?family=Rubik:400,700&display=swap");

      *,
      *::after,
      *::before {
        margin: 0;
        padding: 0;
        box-sizing: inherit;
      }
      .grids {
        max-width: 136rem;
        margin: 0 auto;
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-column-gap: 3rem;
        grid-row-gap: 3rem;
      }
      .card-one {
        grid-column: 1/4;
      }
      .card-two {
        grid-column: 1/4;
      }
      
      .card-four {
        grid-column: 1/4;
      }
       .card {
        perspective: 150rem;
        -moz-perspective: 150rem;
        position: relative;
        height: 25rem;
        width: 100%;
        transition: all ease-in-out 400ms;
        cursor: pointer;
      }
      
      .card:hover {
        transform: scale(1.05);
      }
      
      .card:active {
        transform: translateY(-1px);
      }
      
      .card__side {
        transition: all 0.8s ease;
        color: white;
        font-size: 2rem;
        position: absolute;
        top: 0;
        left: 0;
        height: 25rem;
        width: 100%;
        backface-visibility: hidden;
        box-shadow: 2px 4px 16px rgba(0, 0, 0, 0.4);
        border-radius: 8px;
      }
      
      .card__side--front {
        background-color: #2196f3;
        position: relative;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
      }
      
      .card__side--back {
        background-color: #303f9f;
        transform: rotateY(180deg);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
      }
      
      .showGreen {
        transform: rotateY(-180deg);
      }
      
      .showRed {
        transform: rotateY(0);
      }
      
      .text-box {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        width: 100%;
      }
      
      .text-box-top {
        font-size: 2.2rem;
        text-shadow: 2px 2px 10px #0000006c;
        font-weight: 400;
      }
      
      .text-box-middle {
        font-size: 5.5rem;
        font-weight: 700;
        text-shadow: 2px 2px 10px #0000006c;
      }
      
      .text-box-lower {
        font-size: 2rem;
        text-shadow: 2px 2px 10px #0000006c;
        font-weight: 400;
      }
      
      .heading {
        transition: all 0.6s linear;
      }
      
      .hide {
        visibility: hidden;
        opacity: 0;
      }
      
      .show {
        visibility: visible;
        opacity: 1;
      }
      
      #front-1 {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0) 
          ),
          url("https://cdn.dribbble.com/users/508588/screenshots/14845032/media/0ccb46199a524bfb95ac258b578f3efa.jpg?compress=1&resize=1000x750&vertical=top");
      }
      
      #front-2 {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0) 
          ),
          url("http://www.skdrivers.com/skdm/about_images/car22.jpg");
      }
      #front-4 {
        background-image: linear-gradient(
             rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0) 
          ),
          url("https://img.freepik.com/premium-vector/man-washing-car-service-worker-uniform-cleaning-vehicle_533410-247.jpg");
      }
            
      #back-1 {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0) 
          ),
          url("https://www.leadsquared.com/wp-content/uploads/2022/05/Car-Dealership-Marketing-Strategies.png");
      }
      
      #back-2 {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0) 
          ),
          url("https://www.careeraddict.com/uploads/article/60679/break-room-driving.jpg");
      }
      
     
      
      #back-4 {
        background-image: linear-gradient(
            rgba(0, 0, 0, 0),
         rgba(0, 0, 0, 0)            
          ),
          url("https://t.pimg.jp/098/289/109/1/98289109.jpg");
      }
      
      
      
     
      
      @media screen and (min-width: 1024px) {
       
      
        .grids {
          max-width: 136rem;
          margin: 0 auto;
          display: grid;
          grid-template-columns: 1fr 1fr 1fr;
          grid-column-gap: 3rem;
          grid-row-gap: 3rem;
        }
      
        .card-one {
          grid-column: 1/2;
        }
      
        .card-two {
          grid-column: 2/2;
        }
      
       
        .card-four {
          grid-column: 3/4;
        }
      
      
      }

/*services*/
.dropdown-item{
    padding:1px;
}



	




       

		
			

	

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
            
            background: skyblue;
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
    <%--services --%>
    <script>        flipCheck = 0;

      function rotateCards() {
        if (flipCheck === 0) {
          document.getElementById("front-2").classList.add("showGreen");
          document.getElementById("back-2").classList.add("showRed");
      
          document.getElementById("front-1").classList.add("showGreen");
          document.getElementById("back-1").classList.add("showRed");
          document.getElementById("front-4").classList.add("showGreen");
            document.getElementById("back-4").classList.add("showRed");
      
          flipCheck = 1;
      
         
      
           
        } else {
          document.getElementById("front-2").classList.remove("showGreen");
          document.getElementById("back-2").classList.remove("showRed");
      
          document.getElementById("front-1").classList.remove("showGreen");
          document.getElementById("back-1").classList.remove("showRed");
          
          document.getElementById("front-4").classList.remove("showGreen");
          document.getElementById("back-4").classList.remove("showRed");
      
          flipCheck = 0;
      
          
          
        }
      }
      
      setInterval(rotateCards, 3000); // Time in milliseconds
       <%-- services--%>	
      
    </script>


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
                    <a class="nav-link" href="AboutUs.html">About Us</a>
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
                    <a class="nav-link" href="ContactUs.html">Contact Us</a>
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
                    <img class="d-block w-100" src="images/nav_3.jpg" alt="First slide" style="width: 600px; height: 600px" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/nav_2.jpg" alt="Second slide" style="width: 800px; height: 600px" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/nav_4.jpg" alt="Third slide" style="width: 800px; height: 600px" />
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
        &nbsp;
        <%--why choose us --%>
       <h2 style="background-color:white;color:black;"> <center><b>WHY CHOOSE US ?</b></center></h2>
        &nbsp;
         <div class=" bodys">
    <div class="center">
      <figure class="card card-with-hover">
        <img
          src="images/best_tech.jpg"
          alt="img24"
        />
        <figcaption class="card-caption">
          <div class="card-caption-content">
            <h2>Best Technicians</h2>
            <div class="card-text-wrapper">
              <p><a>We provide technician that inspects and repairs vehicles so they run safely, efficiently and reliably.</a></p>
              
             
            </div>
          </div>
        </figcaption>
      </figure>

      <figure class="card card-with-hover">
        <img
          src="images/best_tech2.jpg"
          alt="img24"
        />
        <figcaption class="card-caption">
          <div class="card-caption-content">
            <h2>Best Quality</h2>
            <div class="card-text-wrapper">
              <p><a>  We meet all  Your expectations in terms of function and behavior of your vehicle.</a></p>
              
            </div>
          </div>
        </figcaption>
      </figure>

      <figure class="card card-with-hover">
        <img
          src="images/best_tech3.jpg"
          alt="img24"
        />
        <figcaption class="card-caption">
          <div class="card-caption-content">
            <h2>Affordable Price</h2>
            <div class="card-text-wrapper">
              <p><a>We provide services which fits your budget.</a></p>
             
            </div>
          </div>
        </figcaption>
      </figure>

     
     

    </div>
    </div>
        <br /><br /><br /><br />
         
        <center>
            <h2  style="background-color:white;color:Black;"><b>How It Works?</b></h2>
        </center>
        
        
         
         
<center>
       <img 
          src="images/step.png" width="1540" height="600"  alt="img24"
        /></center>
         &nbsp;
         <br /><br /><br /><br />
        
        <center>
            <h2  style="background-color:white;color:Black;"><b>Services</b></h2>
        </center>
        

         
        &nbsp;
              
          <%--services --%>
        <div class="grids">
      <div class="card-one">
        <div class="card">
          <div class="card__side card__side--front" id="front-1">
            <div class="text-box">
              <h5 class="text-box-middle">24/7 On-road assistance</h5>
            </div>
          </div>
          <div class="card__side card__side--back" id="back-1">
            <div class="text-box">
              
              <a href="RoadSideAssistance.aspx" class="btn "> <h4 style="background-color:white;color:black;">Take Assistance</h4></a>
            </div>
          </div>
        </div>
      </div>
      <div class="card-two">
        <div class="card">
          <div class="card__side card__side--front" id="front-2">
            <div class="text-box">
              <h5 class="text-box-middle">Drivers Availibility</h5>
            </div>
          </div>
          <div class="card__side card__side--back" id="back-2">
            <div class="text-box">
              
        <a href="RoadSideAssistance.aspx" class="btn "> <h4 style="background-color:white;color:black;">Driver Availability</h4></a>
            </div>
          </div>
        </div>
      </div>
     
      <div class="card-four">
        <div class="card">
          <div class="card__side card__side--front" id="front-4">
            <div class="text-box">
              <h5 class="text-box-middle">Car Servicing </h5>
            </div>
          </div>
          <div class="card__side card__side--back" id="back-4">
            <div class="text-box">
              
              <a href="RoadSideAssistance.aspx" class="btn "> <h4 style="background-color:white;color:black;">Car Servicing</h4></a>
            </div>
          </div>
        </div>
      </div>
      </div>
      <br /><br />

          <%--services --%>

    
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
               <%-- <div class="col-xs-12 col-sm-4 col-md-4">
                    <h5>Quick links </h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Home </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>About </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Our Services </a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i>Expert Team </a></li>
                    </ul>
                </div>--%>
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
<%--                        <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>--%>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                    </ul>
                </div>
               
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                    <p class="h6">© Copyright 2023 - QuickCare. All rights reserved.  <a class="text-green ml-2" href="#" target="_blank">JavaTpoint </a></p>
                </div>
              
            </div>
        </div>
    </section>

</body>
</html>