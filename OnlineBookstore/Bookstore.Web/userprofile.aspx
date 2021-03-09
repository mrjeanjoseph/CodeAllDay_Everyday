<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Bookstore.Web.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    <div class="container-fluid" style="background-color: lightgreen">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col center">
                                <img width="75" src="img/userIcon.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Your Profile</h3>
                                <span>Account Status</span>
                                <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="fullNameTxtBx" placeholder="Full Name"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="birthDateTxtBx" placeholder="Date of Birth"
                                        runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="phoneNumberTxtBx" placeholder="Phone Number"
                                        runat="server" TextMode="Phone"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="emailTxtBx" placeholder="Email"
                                        runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="addressTxtBx1" placeholder="Street Address 1"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="addressTxtBx2" placeholder="Street Address 2"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="--Select--" Value="select" />
                                        <asp:ListItem Text="Haiti" Value="LAS" />
                                        <asp:ListItem Text="North Carolina" Value="NC" />
                                        <asp:ListItem Text="South Carolina" Value="SC" />
                                        <asp:ListItem Text="Virginia" Value="VA" />
                                        <asp:ListItem Text="Florida" Value="FL" />
                                        <asp:ListItem Text="Georgia" Value="GA" />
                                        <asp:ListItem Text="Tennessee" Value="TN" />
                                        <asp:ListItem Text="West Virginia" Value="WV" />
                                        <asp:ListItem Text="Texas" Value="TX" />
                                        <asp:ListItem Text="California" Value="CA" />
                                    </asp:DropDownList>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="cityTxtBx" placeholder="City"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="zipcodeTxtBx" placeholder="ZipCode"
                                        runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group center">
                                    <span class="badge rounded-pill bg-success">Please Create a username and password</span>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="userNameTxtBx" placeholder="Username"
                                        runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="passwordTxtBx" placeholder="Current Password"
                                        runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="confirmPassTxtBx" placeholder="New Password"
                                        runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto center">
                                <div class="form-group">
                                    <asp:Button ID="updateBtn" class="btn btn-primary btn-block btn-lg" runat="server" Text="Update" />
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a>
                </div>
                <br />
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col center">
                                <img width="75" src="img/book.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Your Profile</h3>
                                <span>Account Status</span>
                                <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label2" runat="server" Text="Your Status"></asp:Label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                                <br />
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a>
                </div>


            </div>

        </div>
    </div>


</asp:Content>
