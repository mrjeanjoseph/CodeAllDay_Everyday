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
                    logoutLBtn.Visible = false;
                    helloUserLBtn.Visible = false;

                    adminLoginLBtn.Visible = true;
                    authorDetailsLBtn.Visible = false;
                    publisherDetailsLBtn.Visible = false;
                    inventoryDetailLBtn.Visible = false;
                    bookDetailLBtn.Visible = false;
                    userProfileLBtn.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    userSignUpLBtn.Visible = false;
                    userLoginLBtn.Visible = false;
                    logoutLBtn.Visible = true;
                    helloUserLBtn.Visible = true;
                    helloUserLBtn.Text = $"Hello { Session["FullName"] }";

                    adminLoginLBtn.Visible = true;
                    authorDetailsLBtn.Visible = false;
                    publisherDetailsLBtn.Visible = false;
                    inventoryDetailLBtn.Visible = false;
                    bookDetailLBtn.Visible = false;
                    userProfileLBtn.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    userSignUpLBtn.Visible = false;
                    userLoginLBtn.Visible = false;
                    logoutLBtn.Visible = true;
                    helloUserLBtn.Visible = true;
                    helloUserLBtn.Text = $"Hello Admin"; // add a time stamp here!

                    adminLoginLBtn.Visible = false;
                    authorDetailsLBtn.Visible = true;
                    publisherDetailsLBtn.Visible = true;
                    inventoryDetailLBtn.Visible = true;
                    bookDetailLBtn.Visible = true;
                    userProfileLBtn.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
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
            Response.Redirect("AdminUserDetails.aspx");
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

        protected void LogoutLBtn_Click(object sender, EventArgs e)
        {
            Session["Username"] = "";
            Session["FullName"] = "";
            Session["AccountStatus"] = "";
            Session["role"] = "";

            userSignUpLBtn.Visible = true;
            userLoginLBtn.Visible = true;
            logoutLBtn.Visible = false;
            helloUserLBtn.Visible = false;

            adminLoginLBtn.Visible = true;
            authorDetailsLBtn.Visible = false;
            publisherDetailsLBtn.Visible = false;
            inventoryDetailLBtn.Visible = false;
            inventoryDetailLBtn.Visible = false;
            userProfileLBtn.Visible = false;

            Response.Redirect("Homepage.aspx");
        }
    }
}