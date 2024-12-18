using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRefinedNews
{
    public partial class landingpage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=HP\\SQLEXPRESS;Initial Catalog=NewsDB;User ID=sa;Password=1234");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into [comments] (datetime, email, message) values(@datetime, @email, @message)", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@datetime", DateTime.Now);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@message", TextBox2.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "buttonss", "buttonss();", true);
            refresh();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("newspage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("newspage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerpage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerpage.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void refresh()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}