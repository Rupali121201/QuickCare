<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="FinalYearProject.Admin.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <%--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>
    <link rel="stylesheet" href="style.css" />

    <style>
        body {
            /* background-color: lightgray;*/
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

        #table1 {
            padding: 10px;
            text-align: center;
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
            margin-left: 250px;
            padding: 1px 16px;
            height: 745px;
            /* background-color:lightgrey;*/
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
            margin-top: -40px;
            height: 60px;
            margin-left: -13px;
            margin-right: -17px;
        }

        #Label2 {
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
        <a href="../Admin/AdminDashboard.aspx">Add Mechanic</a>
        <hr />
        <%--     <a href="../AddDriver.aspx">Add Driver</a>
        <hr />--%>
        <a href="UpdateDriver.aspx">Update Driver</a>
        <hr />
        <a href="FeedbackAdmin">User Feedback</a>
        <hr />
<%--        <a href="#contact">Request </a>
        <hr />--%>
        <a href="../../HomePage.aspx">LogOut</a>
        <%--        <a href="#about">Search <i class="fa fa-angle-right" style="font-size: 24px; margin-left: 125px;"></i></a>--%>
    </div>




    <br />
    <br />
    <div class="content">
        <form id="form2" runat="server">
            <div id="nav">
                <asp:Label ID="Label2" runat="server" CssClass="center-block" Text="Label"></asp:Label>
                <%--  <asp:Image ID="Image1" runat="server" />--%>
            </div>

                        <div id="table1">

                <center>
                    <h1 runat="server" style="background-color:#507cd1;color:white;margin-left:43px">Mechanic Details</h1>

                    <asp:GridView ID="gv" runat="server" CellPadding="4" ForeColor="#333333" Width="761px" Height="220px" OnSelectedIndexChanged="OnSelectBooked" BorderStyle="Dotted" CaptionAlign="Left" CssClass="table table-hover table-responsive table-bordered" HeaderStyle-HorizontalAlign="Center">
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
                <br />
                <%--       <div id="table2">
                    <center>
                        <h1 runat="server">List Of Clients</h1>
                        <br />
                        <asp:GridView ID="gv2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px" HorizontalAlign="Center" Height="187px">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </center>
                    <br />
                </div>--%>
            </div>

            <div class="container-fluid">
                <%--  <div class="rows"  ></div>--%>

                <div class="rows">
                    <div class="col-md-4"></div>

                    <div class="col-md-4 " id="form">
                        <h1 style="text-align: center">Add Mechanic Details</h1>
                        <br />

                        <div class="mb-3">
                            <label for="id" class="form-label">Mechanic ID</label>
                            <asp:TextBox ID="id" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="id" ErrorMessage="Mechanic ID is Required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </div>
                        <br />

                        <div class="mb-3">
                            <label for="rnumber" class="form-label">Mechanic Name</label>
                            <asp:TextBox ID="rnumber" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RoomNoValidator" runat="server" ControlToValidate="rnumber" ErrorMessage="Mechanic Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">
                                Shop
                            </label>
                            <asp:TextBox ID="shop" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="shop" ErrorMessage="Shop is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                        <div class="mb-3">
                            <label class="form-label">City</label>

                            <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="city" ErrorMessage="City is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                        <div class="mb-3">
                            <label class="form-label">Phone</label>

                            <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="Phone is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email Address</label>

                            <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>


                       


                        <%--   <div class="mb-3">
                <label for="status">Rating</label>
                &nbsp;<asp:DropDownList ID="status" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                   
                    <asp:ListItem>less than 3 star</asp:ListItem>
                    <asp:ListItem>greater than 3 star</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RatingValidator" runat="server" ControlToValidate="status" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

            </div>--%>


                

                        <br />
                        <center>
                            <asp:Button type="submit" class="btn btn-primary " Text="Add Mechanic" runat="server" OnClick="addmechanicClick" ID="addmechanic"></asp:Button>
                            &nbsp;
                        <asp:Button type="submit" class="btn btn-danger " Text="Delete Mechanic" OnClick="DeleteMechanic" runat="server"></asp:Button>
                            <br />
                        <br />    <asp:Label ID="Label1" runat="server"></asp:Label>
                        </center>
                    </div>

                </div>
            </div>




        </form>
</body>
</html>
