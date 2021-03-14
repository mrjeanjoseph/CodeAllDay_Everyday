using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookstore.Web
{
    public partial class adminprofile : System.Web.UI.Page
    {
        readonly string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void SearchLBtn_Click(object sender, EventArgs e)
        {
            GetUserById();
        }

        protected void userActiveBtn_Click(object sender, EventArgs e)
        {

        }

        protected void userPendingBtn_Click(object sender, EventArgs e)
        {

        }

        protected void userDeleteBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deletePBtn_Click(object sender, EventArgs e)
        {

        }

        private void GetUserById() // User defined function
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UserDetails WHERE Username = '" + userIdTxtBx.Text.Trim() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        fullNameTxtBx.Text = dr.GetValue(1).ToString();
                        birthDateTxtBx.Text = dr.GetValue(3).ToString();
                        contactNumTxtBx.Text = dr.GetValue(4).ToString();
                        emailTxtBx.Text = dr.GetValue(5).ToString();
                        addressTxtBx1.Text = dr.GetValue(6).ToString();
                        addressTxtBx2.Text = dr.GetValue(7).ToString();
                        cityTxtBx.Text = dr.GetValue(8).ToString();
                        stateTxtBx.Text = dr.GetValue(9).ToString();
                        zipCodeTxtBx.Text = dr.GetValue(10).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('User Id entered is invalid');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}