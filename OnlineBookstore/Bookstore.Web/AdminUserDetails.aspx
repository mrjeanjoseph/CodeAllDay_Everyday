<%@ Page Title="Admin - User Profile" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserDetails.aspx.cs" Inherits="Bookstore.Web.adminprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col center">
                                <h3>Admin</h3>
                                <h4>Member Details</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <img width="75" src="img/adminIcon2.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="memberIdTxtBx" placeholder="Id" runat="server" ReadOnly="True"></asp:TextBox><asp:LinkButton ID="searchLBtn" CssClass="btn btn-primary" runat="server"><i class="fas fa-search"></i></asp:LinkButton>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="memberNameTxtBx" placeholder="Member Name" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>

                            <%--The Margin between the three linked buttons are not padded. Look into that!--%>
                            <div class="col-md-5">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="statusTxtBx" placeholder="Status" runat="server" ReadOnly="True"></asp:TextBox>

                                        <asp:LinkButton ID="userActiveBtn" class="btn btn-success mr-1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>

                                        <asp:LinkButton ID="userPendingBtn" class="btn btn-warning mr-1" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>

                                        <asp:LinkButton ID="userDeleteBtn" class="btn btn-danger mr-1" runat="server"><i class="fas fa-trash-alt"></i></asp:LinkButton>

                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="birthDateTxtBx" placeholder="DoB" runat="server" ReadOnly="True"></asp:TextBox>

                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="contactNumTxtBx" placeholder="Contact No." runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-5">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="emailTxtBx" placeholder="Email" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="addressTxtBx1" placeholder="Address 1" runat="server" ReadOnly="True" TextMode="MultiLine" Rows="1"></asp:TextBox>

                                </div>
                                <br />
                            </div>

                            <div class="col-6">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="addressTxtBx2" placeholder="Address 2" runat="server" ReadOnly="True" TextMode="MultiLine" Rows="1"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <asp:TextBox class="form-control" ID="cityTxtBx" placeholder="State" runat="server" ReadOnly="True"></asp:TextBox>

                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="stateTxtBx" placeholder="State" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-4">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="zipCodeTxtBx" placeholder="Zip Code" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center mx-auto">
                                <asp:Button ID="deletePBtn" class="btn btn-danger w-50" runat="server" Text="Delete User Permanantly" />
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
                                <img width="100" src="img/bunchofBook.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <h3>Issued Book List</h3>
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
