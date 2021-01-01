using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class repeter1 : System.Web.UI.Page
    {
        ProductsLogic prod = new ProductsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = prod.GetAllProducts();
            Repeater1.DataBind();

        }
    }
}