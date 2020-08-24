using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblusername.Text = "Welcome " + HttpContext.Current.Session["User"].ToString();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {


            if (Page.IsValid)
            {
                if (DropDownList4.SelectedValue == "Term Life Insurance at $100/Month")
                {
                    Label2.Text = "Selected Insurance Plan is :"+ DropDownList4.SelectedValue + " and your total is $100";
                }
                if (DropDownList4.SelectedValue == "Universal Life Insurance at $150/Month")
                {
                    Label2.Text = "Selected Insurance Plan is :" + DropDownList4.SelectedValue + " and your total is $150";
                }
                if (DropDownList4.SelectedValue == "Indexed Life Insurance at $200/Month")
                {
                    Label2.Text = "Selected Insurance Plan is :" + DropDownList4.SelectedValue + " and your total is $200";
                }
                if (DropDownList4.SelectedValue == "Variable Universal Life Insurance at $300/Month")
                {
                    Label2.Text = "Selected Insurance Plan is :" + DropDownList4.SelectedValue + " and your total is $300";
                }
            }



        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime Expiry = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1).AddMonths(3).AddDays(-1);
            DateTime cc = new DateTime(Convert.ToInt16(DropDownList2.SelectedValue), Convert.ToInt16(DropDownList1.SelectedValue), 1).AddMonths(1).AddDays(-1);

            if (cc >= Expiry)
            {
                args.IsValid = true;
            }
            else
                args.IsValid = false;
        }

        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}