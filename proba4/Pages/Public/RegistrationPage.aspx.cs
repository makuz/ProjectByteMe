using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using proba4.Models;
using System.Web.Configuration;

namespace proba4
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDbConnectionString"].ConnectionStrin‌​g);

        public object TextBoxId { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Persons", con);
            SqlDataReader rdr = cmd.ExecuteReader();

            con.Close();

        }

        protected void AddButton_click(object sender, EventArgs e)
        {


            String name = TextBoxName.Text;
            String surname = TextBoxSurname.Text;
            String login = TextBoxLogin.Text;
            String email = TextBoxEmail.Text;
            String password = TextBoxPassword.Text;
            String country = DropDownListCountry.Text;




            Person person = new Person(name, surname, login, email, password, country);


            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Persons (name, surname, login, email, password, country) values (" +
                "'" + name + "'," +
                "'" + surname + "'," +
                "'" + login + "'," +
                "'" + email + "'," +
                "'" + password + "'," +
                "'" + country + "')"
                , con);

            cmd.ExecuteNonQuery();

            con.Close();


        }




        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Write("Your registration is succesful");
        }
    }
}