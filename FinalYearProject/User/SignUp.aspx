<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FinalYearProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <style>
        body{
           /* background-color:lightskyblue;*/
           background-image:url('../images/caroussel1.jpg');
    
        }
        #form {
            margin-top: 60px;
            background-color: white;
            opacity: 0.9;
        }
    </style>
</head>
<body>


     
      <div class="container-fluid">
        <div class="rows"  ></div>
       
        <div class="rows" >
            <div class="col-md-4"></div>
            <div class="col-md-4  " id="form">
                <h1 class="text-primary text-center rounded-3">Sign Up </h1>
                <form runat="server">
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


                    <div class="mb-3">
                        <label for="Password" class="form-label">Password</label>                    
                       
                        <asp:TextBox ID="PasswordTb" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="passwordvalidator" runat="server" ControlToValidate="PasswordTb" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="idproff" class="form-label">Id Proof</label>                       
                     
                        <asp:TextBox ID="idproof" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="idvalidator" runat="server" ControlToValidate="PasswordTb" ErrorMessage="Id proof is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>                        <%--  <input type="text" class="form-control" id="GenderTb">--%>
                        
                        <asp:TextBox ID="GenderTb" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Gendervalidator" runat="server" ControlToValidate="GenderTb" ErrorMessage="Gender is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <br />
                    <div class="mb-3">
                        <center>
                            <asp:Button type="submit" class="btn btn-primary " Text="SignUp" OnClick="SignUp" runat="server"></asp:Button>
                        </center>

                    </div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />

                </form>
            </div>
        </div>
            
    </div>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


</body>
</html>
