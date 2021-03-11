using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Bookstore.Web
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing 123');</script>"); // testing script

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO MemberDetails " +
                    "(Username, FullName, BirthDate, ContactNumber, Email, StreetAddress1, " +
                    "StreetAddress2, City, State, ZipCode, AccountStatus, Password, ConfirmPass)" +
                    "value (@Username, @FullName, @BirthDate, @ContactNumber, @Email, @StreetAddress1, " +
                    "@StreetAddress2, @City, @State, @ZipCode, @AccountStatus, @Password, @ConfirmPass)", con);

                cmd.Parameters.AddWithValue("@Username", usernameTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@FullName", fullNameTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@BirthDate", birthDateTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNumber", phoneNumberTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", emailTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@StreetAddress1", addressTxtBx1.Text.Trim());
                cmd.Parameters.AddWithValue("@StreetAddress2", addressTxtBx2.Text.Trim());
                cmd.Parameters.AddWithValue("@City", cityTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@State", stateDDL.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ZipCode", zipcodeTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "Pending");
                cmd.Parameters.AddWithValue("@Password", passwordTxtBx.Text.Trim());
                cmd.Parameters.AddWithValue("@ConfirmPass", confirmPassTxtBx.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign up successfull. Go to login page');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}