using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class Inquiries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WaitingForConttactLogic us = new WaitingForConttactLogic();
            us.AddNewInquiries(PhoneNumber.Text, Content.Text, FullName.Text, Type.Text, DateTime.Today);

        }
    }
}