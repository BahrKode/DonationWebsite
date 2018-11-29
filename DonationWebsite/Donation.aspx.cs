using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonationWebsite
{
    public partial class Donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Session["FName"] = row.Cells[1].Text;
            Session["LName"] = row.Cells[2].Text;
            Session["Phone"] = row.Cells[3].Text;
            Session["Email"] = row.Cells[4].Text;
            Session["Amount"] = row.Cells[5].Text;
            Session["Type"] = row.Cells[6].Text;

            string FName = row.Cells[1].Text;
            string LName = row.Cells[2].Text;
            string Phone = row.Cells[3].Text;
            string Email = row.Cells[4].Text;
            string Amount = row.Cells[5].Text;
            string Type = row.Cells[6].Text;
        }
    }
}