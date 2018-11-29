using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace DonationWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            HttpCookie cookie = new HttpCookie("User");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            HttpCookie cookie = new HttpCookie("User");
            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT Admin_Username, Admin_Password FROM [Users] WHERE (Admin_Username = @Admin_Username) AND (Admin_Password = @Admin_Password)";
            cmd.Parameters.AddWithValue("@Admin_Username", username);
            cmd.Parameters.AddWithValue("@Admin_Password", password);
            cmd.Connection = db;
            db.Open();
            SqlDataReader dbReader = cmd.ExecuteReader();
            if (dbReader.HasRows)
            {
                cookie["Username"] = txtUsername.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("Database");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Username or password are incorrect!";
                db.Close();
            }
        }
    }
}