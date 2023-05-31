<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalYearProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link rel="stylesheet" href="../Content/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />


   <%-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   
    --%>
    <link rel="stylesheet" href="style.css" />
   
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
                    <a class="nav-link" href="#home" style="margin: 0px 20px 0px 120px;font-size:17px;">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" style="font-size:17px" href="AboutUs.html">About Us</a>
                </li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" style="margin: 0px 20px 0px 20px; font-size:17px; color: black" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#services">24/7 On-road assitance</a>
                        <a class="dropdown-item" href="#services">Drivers Availibility</a>
                        <a class="dropdown-item" href="#services">Car Servicing</a>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" style="font-size:17px;" href="ContactUs.html">Contact Us</a>
                </li>
            </ul>
            <%--    <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="margin:0px 20px 0px 20px; color:black"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>--%>

            <ul class="navbar-nav mr-auto">

                <li class="nav-item" style="margin-left: 350px">
                    <a class="nav-link" style="font-size:17px;color: black" href="../User/SignUp.aspx" >SignUp</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="font-size:17px;color: black" href="Login.aspx" >Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <section id="home">

    <div class="container-fluid">

        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" id="images">
                    <img src="images/home2.jpg" class="d-block w-100" style="width: 800px; height: 750px" alt="..." />
                </div>
                <div class="carousel-item" id="images">
                    <img src="images/caroussel1.jpg" class="d-block w-100" alt="..." />
                </div>


                <div class="row" style="height: 100px;"></div>
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4 " id="form">
                        <br />
                        <h1 class="bg-info" style="text-align: center;">Welcome to QuickCare Services</h1>
                        <br />
                        <form id="form1" runat="server">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="label1">
                                    Email address
                                </label>
                                <asp:TextBox ID="EmailTb" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailValidator2" runat="server" ControlToValidate="EmailTb" CssClass="alert-danger" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="EmailTb" CssClass="alert-danger" ErrorMessage="Email address is invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="label1">Password</label>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" Text="Enter your password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="password" CssClass="alert-danger" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>

                            <div class="mb-3">
                                <label class="label1">Admin</label>
                                &nbsp; &nbsp; &nbsp;
                                    <asp:RadioButton ID="RadioButton1" runat="server" CssClass="form-check-input" OnCheckedChanged="AdminClick" GroupName="nme" value="admin" />
                                &nbsp;&nbsp;
                                    <label class="label1">User</label>
                                &nbsp; &nbsp; &nbsp;
                                    <asp:RadioButton ID="RadioButton2" runat="server" CssClass="form-check-input" OnCheckedChanged="UserClick" GroupName="nme" value="user" />
                            </div>

                            <center>
                                <asp:Button type="submit" class="btn btn-primary btn-block" Text="Log In" runat="server" OnClick="btn1_Click"></asp:Button></center>

                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />

                        </form>

                    </div>
                    <div class="col-md-4"></div>

                </div>

            </div>
        </div>
    </div>
        </section>

</body>
</html>
