<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="FinalYearProject.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <%--  <link rel="stylesheet" href="Content/bootstrap.min.css" />--%>
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
                    background-color: #000000bf;
                    color: white;
                }

                .sidebar a:hover:not(.active) {
                    /*background-color: #555;*/
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

        #nav{
            background-color:#eff3fb;
            margin-top:-20px;
            height:60px;
            margin-left:-13px;
            margin-right:-17px;
       
        }
        #Label2{
            /*font-family:'Times New Roman', Times, serif;*/
            font-family:'Arial Rounded MT';
            font-size:26px;
            text-align:center;
        }

        .container-fluid{
            background-color:#eff3fb;
        }
        
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>



    <%--  <div class="image">
    
      
    </div>--%>

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
        <a href="../AdminPage.aspx">Dashboard</a>
        <hr />
         <a href="../Admin/AdminDashboard.aspx">Add Mechanic</a>
         <hr />
   <%--     <a href="../AddDriver.aspx">Add Driver</a>
        <hr />--%>
     <a href="UpdateDriver.aspx">Update Driver</a>
      <%--  <a href="../UpdateDriver.aspx">Update Driver</a>--%>
        <hr />
        <a href="FeedbackAdmin">User Feedback</a>
        <hr />
     <%--   <a href="#contact">Request </a>
        <hr />--%>
          <a href="../HomePage.aspx">LogOut</a>
<%--        <a href="#about">Search <i class="fa fa-angle-right" style="font-size: 24px; margin-left: 125px;"></i></a>--%>

    </div>

    <%--   <div class="mb-3 ">
                            <label for="id" class="form-label">Driver ID</label>

                            <asp:TextBox ID="id" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id" ErrorMessage="Driver ID is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>--%>----------------------------

        <div class="content">
            <form id="form2" runat="server">

                <div id="nav">
                    <asp:Label ID="Label2" runat="server" CssClass="center-block" Text="Label"></asp:Label>
                  <%--  <asp:Image ID="Image1" runat="server" />--%>
                </div>

                <div id="table1">

                    <center>


                        <h1 style="background-color:#507cd1;color:white">Dashboard Page</h1>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" Height="315px" Width="1138px" OnSelectedIndexChanged="OnSelectBooked" CssClass="table table-bordered table-hover table-responsive table-bordered">
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
                            <h1 class="text-primary text-center rounded-3" style="color: black">Confirm Request</h1>
                            <br />

                            <div class="mb-3">
                                <label for="id" class="form-label">Booking ID</label>

                                <asp:TextBox ID="id" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>



                            <div class="mb-3 ">
                                <label for="fullname" class="form-label">Full Name</label>

                                <asp:TextBox ID="fnameTb" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fnameTb" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3 ">
                                <label for="email" class="form-label">Email address</label>
                                <asp:TextBox ID="EmailTb" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailTb" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailTb" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>

                            <div class="mb-3 ">
                                <label for="mobno" class="form-label">Mobile Number</label>
                                <asp:TextBox ID="MobTb" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MobTb" ErrorMessage="Mobile Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>



                            <div class="mb-3 ">
                                <label for="location" class="form-label">Pick Up Location</label>
                                &nbsp;<asp:TextBox ID="location" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="location" ErrorMessage="Pick Up Location is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3 ">
                                <label for="destination" class="form-label">Destination</label>
                                &nbsp;<asp:TextBox ID="destination" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="destination" ErrorMessage="Destination is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3 ">
                                <label for="date" class="form-label">Pick Up Date</label>
                                <%--                         <asp:Calendar ID="Calendar1" runat="server" CssClass="form-control"></asp:Calendar>--%>&nbsp;<asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="date" ErrorMessage="Pick Up date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3 ">
                                <label for="time" class="form-label">Pick Up Time</label>
                                <asp:TextBox ID="time" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                                <%--                         <asp:Calendar ID="Calendar2" runat="server" CssClass="form-control"></asp:Calendar>--%>                                <%--                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="time" ErrorMessage="Pick Up Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3 ">
                                <label for="driverdropdown" class="form-label">Driver Name</label>
                                <asp:DropDownList ID="driverdropdown" runat="server"  CssClass="form-control">
                                    <asp:ListItem>Ramesh Sahu</asp:ListItem>
                                    <asp:ListItem>Ankit Singh</asp:ListItem>
                                    <asp:ListItem>Rohit Sen</asp:ListItem>
                                    <asp:ListItem>Navneet Kumar</asp:ListItem>
                                    <asp:ListItem>Faizan Iqbal</asp:ListItem>

                                </asp:DropDownList>

                            </div>
                            <br />
                            <div class="mb-3 ">
                                <label for="driveriddropdown" class="form-label">Driver ID</label>
                                <asp:DropDownList ID="driveriddropdown" runat="server" CssClass="form-control">
                                    <asp:ListItem>1001</asp:ListItem>
                                    <asp:ListItem>1002</asp:ListItem>
                                    <asp:ListItem>1003</asp:ListItem>
                                    <asp:ListItem>1004</asp:ListItem>
                                    <asp:ListItem>1005</asp:ListItem>

                                </asp:DropDownList>

                            </div>
                              <div class="mb-3 ">
                                <label for="approval" class="form-label">Status</label>
                                <asp:DropDownList ID="status" runat="server" CssClass="form-control">

                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Approved</asp:ListItem>
                                    <asp:ListItem>Cancelled</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="statusvalidator" runat="server" ControlToValidate="status" ErrorMessage="Status is Required" ForeColor="Red"></asp:RequiredFieldValidator>


                            </div>



                            <br />
                            <div class="mb-3">
                                <center>
                                    <asp:Button type="submit" class="btn btn-primary " Text="Approve Request" runat="server" OnClick="ApprovedClick"></asp:Button>
                                    &nbsp;&nbsp;
                                    <asp:Button type="submit" class="btn btn-danger " Text="Reject Request" runat="server" OnClick="RejectClick"></asp:Button>

                                </center>

                            </div>
                            <br /><br />



                            <div class="mb-3">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>

                </div>

                <br />

                  <div id="table2">

                    <center>
                        <h1 style="background-color:#507cd1;color:white">Mechanic Booking</h1>
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" Height="150px" Width="1150px" OnSelectedIndexChanged="OnSelectBooked" CssClass="table table-bordered table-hover table-responsive table-bordered">
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
                <br /><br />


            </form>

        </div>



</body>
</html>

