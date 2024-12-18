using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRefinedNews
{
    public partial class mainnews : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                Label1.Text = Session["uname"].ToString();
            }

            else
            {

                Response.Redirect("Default.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["uname"] = Label1.Text.ToString();

            Response.Redirect("newpass.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();    
            Response.Redirect("Default.aspx");
        }
    }
}