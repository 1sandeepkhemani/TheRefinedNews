using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace TheRefinedNews
{
    public partial class forgetpass : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        String msg;


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=HP\\SQLEXPRESS;Initial Catalog=NewsDB;User ID=sa;Password=1234");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
            {
                con.Open();
                cmd = new SqlCommand("select * from [userdata] where email = '" + TextBox2.Text + "' ", con);
                da = new SqlDataAdapter(cmd);

                dt = new DataTable();
                da.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0)
                {
                    sendotp();
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Send OTP Successful')</script>");

                }

                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Account Not Found')</script>");
                }
                
                
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('')</script>");
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                cmd = new SqlCommand("delete from [optstore] where otp = '" + TextBox5.Text + "' ", con);
                int ra = cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                cmd = new SqlCommand("select * from [userdata] where email = '" + TextBox2.Text + "' ", con);
                da = new SqlDataAdapter(cmd);

                dt = new DataTable();
                da.Fill(dt);
                con.Close();

                if (dt.Rows.Count > 0 && ra > 0)
                {
                    Session["uname"] = TextBox2.Text.ToString();
                    Response.Redirect("newpass.aspx");
                }

                else
                {

                    Response.Write("<script LANGUAGE='JavaScript'>alert('OTP Wrong')</script>");
                }

            }

            catch (Exception)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Error')</script>");
            }

        }


        private void sendotp()
        {
            msg = GeneratePassword();
            string smtpUserName;
            string smtpPassword;


            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(TextBox2.Text.Trim());
            mail.Subject = "Welcome To The Refined News";
            mail.Body = ("Dear, " + TextBox1.Text.Trim() + Environment.NewLine + Environment.NewLine + "Your One Time Password(OTP) For Forget Password : " + msg + Environment.NewLine + Environment.NewLine + "Do not share this OTP with anyone." + Environment.NewLine + Environment.NewLine + "Regards" + Environment.NewLine + "The Refined News");
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

            con.Open();
            cmd = new SqlCommand("insert into [optstore](otp) values(@otp)", con);
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@otp", msg);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public string GeneratePassword()
        {
            string OTPLength = "4";
            string OTP = string.Empty;

            string Chars = string.Empty;
            Chars = "1,2,3,4,5,6,7,8,9,0";

            char[] seplitChar = { ',' };
            string[] arr = Chars.Split(seplitChar);
            string NewOTP = "";
            string temp = "";
            Random rand = new Random();
            for (int i = 0; i < Convert.ToInt32(OTPLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                NewOTP += temp;
                OTP = NewOTP;
            }
            return OTP;
        }
    }
}