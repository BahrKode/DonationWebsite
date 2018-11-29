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
    public partial class AddDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fName = txtFirstName.Text;
            string lName = txtLastName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string amount = txtDonationAmt.Text;
            string type = txtDonationType.Text;
            string date = txtDate.Text;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [Donors] ([Person_FName], [Person_LName], [Person_Email], [Person_Phone], [Donation_Amount], [Donation_Type], [Date]) VALUES ('" + fName + "','" + lName + "','" + email + "','" + phone + "','" + amount + "','" + type + "','" + date + "')";
            cmd.Connection = db;

            db.Open();

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                Label1.Text = "An error occured writing into database!";
                Label1.Visible = true;
            }
            finally
            {
                db.Close();
                Response.Redirect("/Database.aspx");
            }
        }
    }
}