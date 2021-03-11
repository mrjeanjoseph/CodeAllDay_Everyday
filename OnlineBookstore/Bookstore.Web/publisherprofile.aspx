<%@ Page Title="Publisher Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PublisherProfile.aspx.cs" Inherits="Bookstore.Web.publisherlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col center">
                                <h3>Publisher Details</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <img width="100" src="img/publisherIcon.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="publisherIdTxtBx" placeholder="Publisher Id" runat="server"></asp:TextBox>
                                        <asp:Button ID="searchBtn" class="btn btn-primary" runat="server" Text="Search" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-7">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="publisherNameTxtBx" placeholder="Publisher Full Name"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row mr-auto">
                            <div class="col-4">
                                <asp:Button ID="addBtn" class="btn btn-success w-100" runat="server" Text="Add" />
                            </div>
                            <div class="col">
                                <asp:Button ID="updateBtn" class="btn btn-warning w-100" runat="server" Text="Update" />
                            </div>
                            <div class="col">
                                <asp:Button ID="deleteBtn" class="btn btn-danger w-100" runat="server" Text="Delete" />
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
                                <img width="75" src="img/authorListIcon.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Publisher Lists</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>


</asp:Content>
