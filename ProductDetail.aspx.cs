using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        ProductsLogic pl = new ProductsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.Params["test"];//קיבלתי את הפרמטר כמחרוזת
                if (id != null)
                {
                    int productID = Int32.Parse(id);//הפכתי אותה לטיפוס מספר
                    DataSet ds = pl.GetProd(productID);//קראתי לשאילתא שתעלה לי נתונים לפי אותו משתנה
                    desc.Text = ds.Tables[0].Rows[0]["descpription"].ToString();
                    bigImage.ImageUrl = "image/" + ds.Tables[0].Rows[0]["productImage"].ToString();
                    price.Text = ds.Tables[0].Rows[0]["price"].ToString();

                }
            }

        }
    }
}