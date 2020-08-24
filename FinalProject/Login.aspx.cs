using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["user"] != null)
            //{
            //    Response.Redirect("BuyInsurance.aspx");
            //}
        }


        protected void Login_Click(object sender, EventArgs e)
        {
            
            string connect = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|InsurancePlans.accdb;Persist Security Info=True";
            string query = "Select Count(*) From UserDetails Where username = ? And pass = ?";
            int result = 0;
            using (OleDbConnection conn = new OleDbConnection(connect))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", UserName.Text);
                    cmd.Parameters.AddWithValue("", Password.Text);
                    conn.Open();
                    Session["user"] = UserName.Text;
                    result = (int)cmd.ExecuteScalar();
                }
            }
            if (result > 0)
            {
            Response.Redirect("BuyInsurance.aspx");
            }
            else
            {
                Literal1.Text = "Invalid credentials";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}