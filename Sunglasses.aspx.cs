using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class Sunglasses : System.Web.UI.Page
    {
        ProductsLogic prod = new ProductsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = prod.GetAllProducts();
            Repeater1.DataBind();

        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            string id = ((sender as Button).CommandName).ToString();//מחלצת את הנתון
            Response.Redirect("ProductDetail.aspx?test=" + id);//שולחת לעמוד הבא
        }
    }
}