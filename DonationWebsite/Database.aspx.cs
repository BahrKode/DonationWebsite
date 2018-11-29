using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationWebsite
{
    public partial class Database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string action = dropList.Text;

            if (action == "Add Donor")
            {
                Response.Redirect("AddDonor.aspx");
            }
            else if (action == "Add Donation")
            {
                Response.Redirect("AddDonation.aspx");
            }
            else if (action == "Modify Donor")
            {
                Response.Redirect("ModifyDonation.aspx");
            }
            else if (action == "Generate Report")
            {
                Response.Redirect("Donation.aspx");
            }
        }
    }
}