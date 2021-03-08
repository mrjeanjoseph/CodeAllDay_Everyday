<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Bookstore.Web.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="img/home-bg.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 Primary Features -</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-4 justify-content-center">
                    <center>

                    
                        <img width="150" src="img/img4.png" />
                        <h4>Digital Book Inventory</h4>
                        <p class="align-content-center">Pellentesque ut mattis nisl. Integer eleifend, odio vel tempor vehicula, mauris elit dignissim dolor, vitae sollicitudin enim sem ac nunc. Curabitur cursus condimentum ante, id luctus enim iaculis ac.</p>
                </center>

                </div>
                <div class="col-4">
                    <center>
                        <img width="150" src="img/img2.png"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Pellentesque ut ollicitu din enim sem ac nunc. Curabitur cursus condimentum ante, idluctus enim iaculis ac.</p>
                    </center>
                </div>
                <div class="col-4">
                    <center>
                        <img width="150" src="img/img3.png"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Pellentesque ut mattis nisl. Integer eleifend, odio vel tempor vehicula, mauris elit dignissim dolor, vitae sollicitudin enim sem ac nunc. Curabitur cursus condimentum ante, id luctus enim iaculis ac.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
