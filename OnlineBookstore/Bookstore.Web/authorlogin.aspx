<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authorlogin.aspx.cs" Inherits="Bookstore.Web.authorlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col center">
                                <h3>Author Details</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <img width="100" src="img/authorIcon.png" />
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
                                        <asp:TextBox class="form-control" ID="authorIdTxtBx" placeholder="Author Id" runat="server"></asp:TextBox>
                                        <asp:Button ID="searchBtn" class="btn btn-primary" runat="server" Text="Search" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-7">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="authorNameTxtBx" placeholder="Author First & Last Name"
                                        runat="server"></asp:TextBox>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row mr-auto">
                            <div class="col-4">
                                <asp:Button ID="addBtn" class="btn btn-primary w-100" runat="server" Text="Add" />
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

            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col center">
                                <img width="75" src="img/book.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Your issued Books</h3>
                                <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label2" runat="server" Text="Your Book Information"></asp:Label>
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
                    <a href="homepage.aspx"><< Back to Home</a>
                </div>
            </div>
            <br />
        </div>
    </div>


</asp:Content>
