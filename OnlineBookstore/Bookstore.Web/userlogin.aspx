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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                                <hr />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
