<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Bookstore.Web.adminlogin" %>

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
                                <img width="100" src="img/adminIcon.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col center">
                                <h3>Admin Login</h3>
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col"> 
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Admin ID"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password"
                                        runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <hr />
                                <div class="form-group d-grid gap-2">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" />
                                </div>
                                <br />
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
