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
    public partial class authorlogin : System.Web.UI.Page
    {
        readonly string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (CheckAuthorExists())
            {
                Response.Write("<script>alert('Author Id is already in the database.');</script>");
            }
            else
            {
                AddNewAuthor();
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {

        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {

        }

        bool CheckAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from AuthorDetails where AuthorId = '" + authorIdTxtBx.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void AddNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO AuthorDetails (AuthorId, AuthorName) values (@AuthorId, @AuthorName)", con);

                cmd.Parameters.AddWithValue("@AuthorId", authorIdTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@AuthorName", authorNameTxtBx.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Authod Detail added successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}