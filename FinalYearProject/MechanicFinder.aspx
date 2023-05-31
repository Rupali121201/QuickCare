<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MechanicFinder.aspx.cs" Inherits="FinalYearProject.MechanicFinder" %>

<%--<%@ Page Language="C#" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mechanic Availability</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="MechanicStyleSheet.css">

    
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
            margin-top:-24px;
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
            margin-left: 200px;
            /*  margin-top: 150px;*/
            /*   background-color: #d7b179 ;*/
            background-color: #dde8ea;
            opacity: 0.85;
            color: black;
            margin-top: 30px;
            margin-bottom: 30px;

        }

        .container{
            margin-left:370px;
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
        <a href="../User/Feedback.aspx">Feedback </a>
      
        <hr />
     <%--   <a href="../RequestPage.aspx">Request Page </a>--%>



      <%--  <hr />--%>
        <a href="../../HomePage.aspx">LogOut</a>
    </div>




    <form id="Form2" runat="server" class="text-center mt-4">
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container">
                        <a class="navbar-brand" href="#">Quick Care</a>
                    </div>
                </nav>
            </header>

            <main>
                <h1 class="text-center mt-5">Mechanic's Availability</h1>
                <div class="form-group">
                    <%--   <label for="location-input"></label>--%>
                    <%--<select id="location-input" class="form-control" required>
                        <option value="">Select a city:</option>
                        <option value="New Delhi">New Delhi</option>
                        <option value="Gurgaon">Gurgaon</option>
                        <option value="Faridabad">Faridabad</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Noida">Noida</option>
                        <option value="Ghaziabad">Ghaziabad</option>
                    </select>--%>

                    <asp:DropDownList ID="locationDropdown" class="form-control" runat="server">
                        <asp:ListItem Value="">Select a city:</asp:ListItem>
                        <asp:ListItem Value="New Delhi">New Delhi</asp:ListItem>
                        <asp:ListItem Value="Gurgaon">Gurgaon</asp:ListItem>
                        <asp:ListItem Value="Faridabad">Faridabad</asp:ListItem>
                        <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                        <asp:ListItem Value="Noida">Noida</asp:ListItem>
                        <asp:ListItem Value="Ghaziabad">Ghaziabad</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <%--<button type="submit" >Search</button>--%>
                    <asp:Button ID="Button1" class="btn btn-primary" OnClick="search_button" runat="server" Text="Search Mechanic" />
                    <div id="drivers-list" class="mt-5"></div>


                    <asp:GridView ID="mechanicsGrid" runat="server" CellPadding="4" ForeColor="#333333" CssClass="table table-bordered table-hover table-responsive table-bordered" OnSelectedIndexChanged="OnSelectBooked">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <%--    <asp:GridView ID="mechanicsGrid" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                    </Columns>
                </asp:GridView>--%>
                </div>
               
            <asp:Panel ID="formPanel" runat="server" >
                    <!-- Your form elements go here -->
           <%--<asp:Label ID="Label5" runat="server" class="form-label"></asp:Label>--%>
        
            <h1>Book Mechanic</h1>
      
         <asp:Label ID="name" runat="server" class="form-label" Text="Mechanic Name"></asp:Label>
                        <%--<label for="fullname" class="form-label">Name</label>--%>
          <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

            <asp:Label ID="shop_label" runat="server" class="form-label" Text="Shop"></asp:Label>
            <asp:TextBox ID="shop_textbox" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

            <asp:Label ID="city_label" runat="server" class="form-label" Text="City"></asp:Label>
            <asp:TextBox ID="city_textbox" runat="server" CssClass="form-control"></asp:TextBox>
    <br />

            <asp:Label ID="mobile_label" runat="server" class="form-label" Text="Mobile Number"></asp:Label>

            <asp:TextBox ID="mobile_textbox" runat="server" CssClass="form-control" ></asp:TextBox>
    <br />

                 <asp:Label ID="email_label" runat="server" class="form-label" Text="Email Address"></asp:Label>

            <asp:TextBox ID="email_textbox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Book Mechanic"  class="btn btn-primary" OnClick="Book_Mechanic" /> <br />
        <!-- Other form fields -->
        </asp:Panel>

        </main>
               <%-- <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>     --%>  
           <br /><br />

            <footer class="bg-dark text-light text-center py-3">
                <div class="container" style="margin-left:50px">
                    &copy; <%= DateTime.Now.Year %> Quick Care. All rights reserved.
                </div>
            </footer>
        </div>
    </form>

    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>--%>
    <%--    <script src="script.js"></script>--%>
</body>
</html>

