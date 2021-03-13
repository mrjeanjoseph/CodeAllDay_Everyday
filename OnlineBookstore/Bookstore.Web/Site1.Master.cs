using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookstore.Web
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    if (Session["role"].Equals(""))
            //    {
            //        userSignUpLBtn.Visible = true;
            //        userLoginLBtn.Visible = true;
            //        logoutLBtn.Visible = true;
            //        helloUserLBtn.Visible = true;

            //        adminLoginLBtn.Visible = true;
            //        authorDetailsLBtn.Visible = true;
            //        publisherDetailsLBtn.Visible = true;
            //        inventoryDetailLBtn.Visible = true;
            //        inventoryDetailLBtn.Visible = true;
            //        userLoginLBtn.Visible = true;


            //    }
            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void AdminLoginLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void AuthorDetailsLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthorDetails.aspx");
        }

        protected void PublisherDetailsLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublisherDetails.aspx");
        }

        protected void InventoryDetailLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InventoryDetails.aspx");
        }

        protected void BookDetailLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookDetails.aspx");
        }

        protected void UserProfileLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void ViewBooksLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookDetails.aspx");
        }

        protected void UserLoginLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void UserSignUpLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignup.aspx");
        }
    }
}