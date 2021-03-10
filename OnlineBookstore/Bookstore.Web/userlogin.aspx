<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Bookstore.Web.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col center">
                                <img width="100" src="img/userIcon.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Member Login</h3>
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <a>Don't have an account?</a><br />
                                <a href="usersignup.aspx">Register here</a>
                            </div>
                        </div><br />

                        <div class="row">
                            <div class="col">
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Member ID"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password"
                                        runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="center">
                                    <div class="form-group">
                                        <asp:Button ID="Login" class="btn btn-success w-50 btn-lg" runat="server" Text="Login" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx"><< Back to Home</a>
                </div>
                <br />

            </div>
        </div>
    </div>

</asp:Content>
