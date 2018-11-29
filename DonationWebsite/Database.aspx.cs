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
    public partial class Database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string action = dropList.Text;

            if (action == "Add Donation")
            {
                Response.Redirect("AddDonation.aspx");
            }
            else if (action == "Modify Donor")
            {
                Response.Redirect("ModifyDonor.aspx");
            }
            else if (action == "Modify Donation")
            {
                Response.Redirect("ModifyDonation.aspx");
            }
            else if (action == "View Donations")
            {
                Response.Redirect("Donation.aspx");
            }
            else if (action == "Generate Report")
            {
                Response.Redirect("Donation.aspx");
            }
            else if (action == "Make Selection")
            {
                Label1.Text = "Choose an option from the drop-down menu";
                Label1.Visible = true;
            }
        }
    }
}