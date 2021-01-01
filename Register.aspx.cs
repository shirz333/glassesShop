using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UsersTableLogic us = new UsersTableLogic();
            if (us.CheckExistPassword(Password1.Text))
            {
                Label1.Text = "סיסמא קיימת בחר סיסמא אחרת";
            }
            else
            {
                us.AddNewUser(IdUser.Text, UserName1.Text, FullName.Text, Password1.Text, Email.Text);
            }

        }
    }
}