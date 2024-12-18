using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace TheRefinedNews
{
    public partial class loginpage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=HP\\SQLEXPRESS;Initial Catalog=NewsDB;User ID=sa;Password=1234");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from[userdata] where email = '" + TextBox2.Text + "'  and password = '" + TextBox3.Text + "' ", con);
            da = new SqlDataAdapter(cmd);

            dt = new DataTable();
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                con.Open();
                cmd = new SqlCommand("insert into [logindetail](datetime,email) values(@datetime,@email)", con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@datetime", DateTime.Now);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script LANGUAGE='JavaScript'>alert('Account Login Sucessfully')</script>");

                Session["uname"] = TextBox2.Text.ToString();

                Response.Redirect("mainnews.aspx");
            }

            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Account Not Found')</script>");
            }
            
        }
    }
}