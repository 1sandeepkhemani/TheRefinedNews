using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRefinedNews
{
    public partial class newpass : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=HP\\SQLEXPRESS;Initial Catalog=NewsDB;User ID=sa;Password=1234");

            if (Session["uname"] != null)
            {
                TextBox2.Text = Session["uname"].ToString();
            }

            else
            {

                Response.Redirect("Default.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                sendmail();
                con.Open();
                cmd = new SqlCommand("update [userdata] set password='" + TextBox3.Text + "' where email='" + TextBox2.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();



                Response.Write("<script LANGUAGE='JavaScript'>alert('Password Changed Sucessfully')</script>");
                Response.Redirect("loginpage.aspx");


            }

            catch (Exception)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Error')</script>");
            }

        }
        private void sendmail()
        {
            string smtpUserName;
            string smtpPassword;


            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(TextBox2.Text.Trim());
            mail.Subject = "Welcome To The Refined News ";
            mail.Body = ("Dear, Sir/Mam "+ Environment.NewLine + Environment.NewLine + "Your  Password Change Successfully" + Environment.NewLine + Environment.NewLine + "Sincerely" + Environment.NewLine + "The Refined News");
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);
        }
    }
}