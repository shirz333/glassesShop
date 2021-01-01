using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class ManagerOrders : System.Web.UI.Page
    {
        OrdersLogic ord = new OrdersLogic();
        CitiesLogic ct = new CitiesLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               GridView1.DataSource = ord.GetAllOrders();
               GridView1.DataBind();

               
                    ddl.DataSource = ct.GetAllCities();
                    ddl.DataBind();

                    ddl.DataTextField = "name";

                    ddl.DataBind();
                    ddl.Items.Insert(0, "בחר");
                
            }

        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
          //  GridView1.DataSource = ord.GetAllOrders();
           // GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
           GridView1.DataSource = ord.OrderCity(ddl.Text);
           GridView1.DataBind();
        }
    }
}