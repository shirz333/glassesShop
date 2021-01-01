using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class ManagerPrudacts : System.Web.UI.Page
    {

        ProductsLogic pl = new ProductsLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridView1.DataSource = pl.GetAllProducts();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.DataSource = pl.GetAllProducts();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //כשיש אפשרות עריכה בעצם נוספת תיבת טקס וממנה צריך לקחת את הנתון
            string price = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            string id = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
            //עדכון הנתונים במסד הנתונים
            pl.updateProd(Double.Parse(price), Int32.Parse(id));
            //יציאה ממצב עריכה
            GridView1.EditIndex = -1;
            GridView1.DataSource = pl.GetAllProducts();
            GridView1.DataBind();
           

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
           
                GridView1.DataSource = pl.GetAllProducts();
                GridView1.DataBind();
            
        }

    }
}