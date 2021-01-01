using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class Login : System.Web.UI.Page
    {
    
        protected void Button1_Click(object sender, EventArgs e)
        {
                UsersTableLogic us = new UsersTableLogic();
                if (us.CheckExistUser(UserName1.Text, Password1.Text))
                {
                Session["fullName"] = us.GetName(UserName1.Text, Password1.Text);
                    if(us.IfManager(Password1.Text))
                    {
                        Session["isManger"] = "yes";
                        Response.Redirect("repeter1.aspx");
                    }
                    else 
                    {
                      Response.Redirect("Home.aspx");
                    }
                }
                else
                    Label1.Text = "לא קיים במערכת";
            
        }


    
    }
}