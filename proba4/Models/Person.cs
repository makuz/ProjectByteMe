using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proba4.Models
{
    public class Person
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Login { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Country { get; set; }

        public string Roles { get; set; }

        public Person() { }

        public Person(string name, string surname, string login, string email, string password,string country)
        {
            this.Name = name;
            this.Surname = surname;
            this.Login = login;
            this.Email = email;
            this.Password = password;
            this.Country = country;
        }

    }
}