<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateDriver.aspx.cs" Inherits="FinalYearProject.UpdateDriver" %>

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
            margin-left: 70px;
            margin-top: 15px;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 305px;
            /*background-color: #f1f1f1;*/
            background-color: #C0C0C0;
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
                    /*   background-color: #04AA6D;*/
                    /*color: white;*/
                    background-color: black;
                    color: white;
                }

                .sidebar a:hover:not(.active) {
                    /*background-color: #555;*/
                    background-color: black;
                    color: white;
                }

        div.content {
            margin-left: 250px;
            padding: 1px 16px;
            height: 745px;
            /* background-color:lightgrey;*/
        }

        #table1 {
            padding: 10px;
            text-align: center;
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

                #nav {
            background-color: #eff3fb;
            /*margin-top: -3px;*/
            height: 60px;
            margin-left: -13px;
            margin-right: -17px;
        }

        #Label1 {
            /*font-family:'Times New Roman', Times, serif;*/
            font-family: 'Arial Rounded MT';
            font-size: 26px;
            text-align: center;
        }

        .container-fluid{
               background-color:#eff3fb;
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
            <h4 style="margin-left: 40px;">admin@gmail.com</h4>
            <%--    </a>--%>
            <i class="fa fa-twitter-square" style="font-size: 24px; margin-left: 66px; margin-top: -55px"></i>
            <i class="fa fa-linkedin-square" style="font-size: 24px; margin-left: 10px"></i>
            <i class="fa fa-facebook-square" style="font-size: 24px; margin-left: 10px"></i>

             <hr />
        <a href="AdminPage.aspx">Dashboard</a>
        <hr />
         <a href="AdminDashboard.aspx">Add Mechanic</a>
         <hr />
   <%--     <a href="../AddDriver.aspx">Add Driver</a>
        <hr />--%>
        <a href="UpdateDriver.aspx">Update Driver</a>
        <hr />
        <a href="FeedbackAdmin">User Feedback</a>
        <hr />
   <%--     <a href="#contact">Request </a>
        <hr />--%>
          <a href="HomePage.aspx">LogOut</a>
        </div>
       

      
           <div class="content">
        <form id="form2" runat="server">

                        <div id="nav">
                <asp:Label ID="Label1" runat="server" CssClass="center-block" Text="Label"></asp:Label>
                <%--  <asp:Image ID="Image1" runat="server" />--%>
            </div>

             <div id="table1">
            <center>
                <h1 style="background-color:#507cd1;color:white;margin-left:43px">Available Drivers</h1>
              
           
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" Height="276px" Width="868px" OnSelectedIndexChanged="OnSelectBooked" CssClass="table table-hover table-responsive table-bordered">
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
            </center>

        </div>
              
                    <div class="container-fluid">
                        <%--  <div class="rows"  ></div>--%>

                        <div class="rows">
                            <div class="col-md-4"></div>
                            <div class="col-md-4  " id="form">

                                <br />
                                <h1 class="text-primary text-center rounded-3" style=" color: black">Update Driver </h1>
                                <br />
                                <br />
                                <%--   <form runat="server">--%>
                                <div class="mb-3 ">
                                    <label for="id" class="form-label">Driver ID</label>

                                    <asp:TextBox ID="id" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id" ErrorMessage="Driver ID is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3 ">
                                    <label for="fullname" class="form-label">Full Name</label>

                                    <asp:TextBox ID="fnameTb" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="fanmevalidator" runat="server" ControlToValidate="fnameTb" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3 ">
                                    <label for="mobno" class="form-label">Mobile Number</label>
                                    <asp:TextBox ID="MobTb" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="mnumbervalidator" runat="server" ControlToValidate="MobTb" ErrorMessage="Mobile Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3 ">
                                    <label for="email" class="form-label">Email address</label>
                                    <asp:TextBox ID="EmailTb" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="emailvalidation" runat="server" ControlToValidate="EmailTb" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTb" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>

                                <div class="mb-3 ">
                                    <label for="address" class="form-label">Address</label>

                                    <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3 ">
                                    <label for="password" class="form-label">Password</label>

                                    <asp:TextBox ID="password" runat="server" CssClass="form-control" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>


                                <br />
                                <div class="mb-3">
                                    <center>
                                         <asp:Button type="submit" class="btn btn-primary " OnClick="AddDetails" Text="Add" runat="server"></asp:Button>
                                        <asp:Button type="submit" class="btn btn-primary " OnClick="UpdateDetails" Text="Update " runat="server"></asp:Button>
                                        <asp:Button type="submit" class="btn btn-primary " OnClick="DeleteDetails" Text="Delete" runat="server"></asp:Button>
                                       
                                   
                                    </center>

                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </div>
                                <br />

                               
                            </div>
                        </div>

                    </div>
             </form>
            </div>
 
</body>
</html>
