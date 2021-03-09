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
                                <img width="100" src="img/PersonIcon.png" />
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
                                <label>Member ID</label>
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Member ID"
                                        runat="server"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group center">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password"
                                        runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Login" />
                                </div>

                                <div class="form-group">
                                    <input id="Button2" class="btn btn-info btn-block" type="button" value="SignUp" />
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
