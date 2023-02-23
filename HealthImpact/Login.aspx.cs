using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthImpact
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               Page.Title = " Login to your account";
               
                RegisterHyperLink.NavigateUrl = "Register";
                var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
                if (!String.IsNullOrEmpty(returnUrl))
                {
                //Redirects from Login Page to Product Page
                    RegisterHyperLink.NavigateUrl += "?ReturnUrl=/Product.aspx" ;
                }            
        }

        [Obsolete]
        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            { 
                //Database intilialization and object instantiation
                HealthImpactEntities hp = new HealthImpactEntities();
                string email = Email.Text.Trim();
                string password = Password.Text.Trim();

                //Retrieving User Login details from User Table
                var thisuser = (from u in hp.UserTables
                                where u.Email == Email.Text
                                select u).FirstOrDefault();

                //Validating User Login input
                if (thisuser.ToString() == string.Empty)
                {
                    LoginWrong.Text = "Your Password and/or email are incorrect";
                    Email.Text = "";
                    Password.Text = "";
                    Page.RegisterStartupScript("Alert Message", "<script language='javascript'>alert('username and password is incorrect try again');</script>");

                    //If Login failed, User will be redirected to the Register Page
                    //Response.Redirect("/Register.aspx", true);
                }

                else if ( password == thisuser.Password)
                {
                    //If Login Successful, User will be redirected to the Product Page
                    Response.Redirect("/Product.aspx", true);
                }
            }                      
        }
    }
}

