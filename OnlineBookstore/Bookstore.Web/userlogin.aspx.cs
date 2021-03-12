using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookstore.Web
{ 
    public partial class userlogin : System.Web.UI.Page
    {
        readonly string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserLoginBtn_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Testing the login button');</script>");
        }
    }
}