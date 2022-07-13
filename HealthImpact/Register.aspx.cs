using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Configuration;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

namespace HealthImpact
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            public void CreateUser_Click(object sender, EventArgs e)
        {
            HealthImpactEntities hp = new HealthImpactEntities();

            //Saving Registration details to a Object
            var userDetails = new UserTable { 
                Email = Email.Text, 
                FirstName = txtFirstname.Text, 
                Surname = txtSurname.Text,
                Cellphone = txtCellphone.Text.Trim(),
                Password = Password.Text,
            };

            //Saving the created object to the Database
            hp.UserTables.Add(userDetails);
            hp.SaveChanges();
            hp.Dispose();

            //Redirecting to Product Page
            Response.Redirect("/Product.aspx", true);
          }
    }
}