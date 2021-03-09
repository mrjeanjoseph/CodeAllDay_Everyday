<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Bookstore.Web.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                            <div class="col">
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Member ID"
                                        runat="server"></asp:TextBox>
                                </div><br />
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password"
                                        runat="server" TextMode="Password"></asp:TextBox>
                                </div><br /><hr />
                                <div class="form-group d-grid gap-2">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" />
                                </div><br />
                                <div class="form-group d-grid gap-2">
                                    <a href="usersignup.aspx"><input id="Button2" class="btn btn-info btn-block btn-lg" type="button" value="SignUp" /></a>
                                </div>
                            </div>

                        </div>
                    </div>
                <a href="homepage.aspx"><< Back to Home</a>
                </div><br />

            </div>
        </div>
    </div>

</asp:Content>
