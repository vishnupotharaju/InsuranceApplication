using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FinalProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|InsurancePlans.accdb;Persist Security Info=True");
            try
            {
                con.Open();
                OleDbCommand  cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO UserDetails ([username], [pass], [age], [gender])" + "VALUES ([@username], [@pass], [@age], [@gender])";
                cmd.Parameters.AddWithValue("@username", txtName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                cmd.Parameters.AddWithValue("@age", txtage.Text);
                cmd.Parameters.AddWithValue("@gender", rbtnGender.Text);

                cmd.ExecuteNonQuery();
                {
                    MessageBox.Show("Successfully Registered, Please Login!");
                    con.Close();

                    //Response.Redirect("BuyInsurance.aspx");
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtage.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}