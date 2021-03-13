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
            try
            {
                if (Session["role"].Equals(""))
                {
                    userSignUpLBtn.Visible = true;
                    userLoginLBtn.Visible = true;
                    logoutLBtn.Visible = true;
                    helloUserLBtn.Visible = true;

                    adminLoginLBtn.Visible = true;
                    authorProfileLBtn.Visible = true;
                    publisherProfileLBtn.Visible = true;
                    inventoryDetailLBtn.Visible = true;
                    userLoginLBtn.Visible = true;


                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void AdminLoginLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void AuthorProfileBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuthorProfile.aspx");
        }

        protected void PublisherProfileBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublisherProfile.aspx");
        }

        protected void InventoryDetailBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InventoryDetails.aspx");
        }

        protected void BookDetailBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookDetails.aspx");
        }

        protected void MemberDetailBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void ViewBooksLBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookDetails.aspx");
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