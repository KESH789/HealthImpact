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
                    RegisterHyperLink.NavigateUrl += "?ReturnUrl=/Product.aspx" ;
                }            
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            { 
                HealthImpactEntities hp = new HealthImpactEntities();
                string email = Email.Text.Trim();
                string password = Password.Text.Trim();

                var thisuser = (from u in hp.UserTables
                                where u.Email == Email.Text
                                select u).FirstOrDefault();

                if (thisuser.ToString() == string.Empty)
                {
                    Response.Redirect("/Register.aspx", true);
                }

                else if ( password == thisuser.Password)
                {
                    Response.Redirect("/Product.aspx", true);
                }
            }                      
        }
    }
}

