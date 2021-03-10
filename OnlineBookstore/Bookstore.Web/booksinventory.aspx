<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booksinventory.aspx.cs" Inherits="Bookstore.Web.booksinventory" %>

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
                                <h4>Books Details</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <img width="100" src="img/bunchofBook.png" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">
                                <hr />
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col center">                                
                                <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                                <br />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="BookIdTxtBx" placeholder="Book Id" runat="server"></asp:TextBox><asp:LinkButton ID="searchLBtn" CssClass="btn btn-primary" runat="server"><i class="fas fa-search"></i></asp:LinkButton>
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-9">
                                <div class="form-group center">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="bookNameTxtBx" placeholder="Book Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
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
                            <div class="col-md-4">
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
