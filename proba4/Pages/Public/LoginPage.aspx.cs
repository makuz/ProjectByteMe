using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Data;
using System.Web.Security;
using System.Security.Principal;
using proba4.Models;
using proba4.Constants;

namespace proba4
{
    public partial class LoginPage : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string UserLogin = TextBoxLogin.Text;
            string UserPassword = TextBoxPassword.Text;
            bool rememberMe = true;

            UserCredentialsDto userCredentialsDto = AuthenticateUser(UserLogin, UserPassword);

            if (userCredentialsDto != null)
            {
                FormsAuthentication.Initialize();

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1,
                UserLogin,
                DateTime.Now,
                DateTime.Now.AddMinutes(30),
                rememberMe,
                userCredentialsDto.UserType,
                FormsAuthentication.FormsCookiePath);

                string hash = FormsAuthentication.Encrypt(ticket);

                HttpCookie cookie = new HttpCookie(
                   FormsAuthentication.FormsCookieName,
                   hash);

                if (ticket.IsPersistent) { cookie.Expires = ticket.Expiration; }

                Response.Cookies.Add(cookie);

                if (userCredentialsDto.UserType == UserTypes.TYPE_USER)
                {
                    Response.Redirect("~/Pages/User/YourByteMe.aspx");
                }

                if (userCredentialsDto.UserType == UserTypes.TYPE_ADMIN)
                {
                    Response.Redirect("~/Pages/Admin/Administrator.aspx");
                }

            }
            else
            {
                Response.Write("login or password are not correct");
            }
        }

        private UserCredentialsDto AuthenticateUser(string login, string Password)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDbConnectionString"].ConnectionStrin‌​g);
            con.Open();
            SqlCommand selectUsersCountCmd = con.CreateCommand();
            selectUsersCountCmd.CommandText = "select count(*) from Persons where Login= @Login and Password = @Password";
            selectUsersCountCmd.CommandType = CommandType.Text;
            selectUsersCountCmd.Parameters.Add("@Login", SqlDbType.VarChar).Value = login;
            selectUsersCountCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
            int usersCount = (int)selectUsersCountCmd.ExecuteScalar();

            if (usersCount == 0)
            {
                return null;
            }

            SqlCommand selectUserTypeCmd = con.CreateCommand();
            selectUserTypeCmd.CommandText = "select [Type] from Persons where Login= @Login and Password = @Password";
            selectUserTypeCmd.CommandType = CommandType.Text;
            selectUserTypeCmd.Parameters.Add("@Login", SqlDbType.VarChar).Value = login;
            selectUserTypeCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
            SqlDataReader rdr = selectUserTypeCmd.ExecuteReader();
            rdr.Read();
            string userType = rdr.GetString(0);
            con.Close();

            UserCredentialsDto Credentials = new UserCredentialsDto();
            Credentials.Login = login;
            Credentials.UserType = userType;

            return Credentials;
        }
    }
}