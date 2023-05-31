<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestPage.aspx.cs" Inherits="FinalYearProject.User.RequestPage" %>

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
            margin-left: 90px;
            margin-top: 15px;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 305px;
            /*background-color: #f1f1f1;*/
            /*background-color: #C0C0C0;*/
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
        <a href="../MechanicFinder.aspx">Mechanic Finder</a>
        <hr />
        <a href="../User/RequestPage.aspx">Request</a>
        <hr />
        <a href="../RoadSideAssistance.aspx">Our Services</a>
        
        <hr />
        <a href="Feedback.aspx">Feedback </a>


        <hr />
        <a href="../../HomePage.aspx">LogOut</a>
    </div>




    <div class="content">

        <form id="form1" runat="server">
            <center>
                <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                <div id="table1">
                    <h1>Request Page</h1>
                    <h3 class=" text-center rounded-3" style="background-color: #507CD1; color: white">Driver Request</h3>

                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="table table-bordered table-hover table-responsive table-bordered" ForeColor="#333333" Height="15px" Width="907px" HeaderStyle-HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
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

                </div>
                <br />
                <div id="table2">

                    <h3 class=" text-center rounded-3" style="background-color: #507CD1; color: white">Mechanic's Request</h3>

                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" CssClass="table table-bordered table-hover table-responsive table-bordered" ForeColor="#333333" Height="15px" Width="907px"  HeaderStyle-HorizontalAlign="Center">
                        <Columns>
                            <%--<asp:BoundField DataField="BookingId" HeaderText="Booking ID" />
                            <asp:BoundField DataField="UserName" HeaderText="User Name" />
                            <asp:BoundField DataField="MechanicName" HeaderText="Mechanic Name" />
                            <asp:BoundField DataField="Shop" HeaderText="Shop" />
                            <asp:BoundField DataField="City" HeaderText="City" />
                            <asp:BoundField DataField="MobNo" HeaderText="Mobile Number" />--%>
                            <asp:TemplateField HeaderText="WhatsApp">
                                <ItemTemplate>
                                    <a href='<%# GetWhatsAppLink(Eval("MobNo")) %>'>Send Message</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <AlternatingRowStyle BackColor="White" />
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

                </div>


                <center>
                    <img src="../images/img1.jpg" height="550" width="700" alt="centered image" />
                </center>
            </center>
        </form>


    </div>

</body>
</html>
