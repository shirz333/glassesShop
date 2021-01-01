using GlassesPr.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlassesPr
{
    public partial class ManagerInquiries : System.Web.UI.Page
    {
        WaitingForConttactLogic con = new WaitingForConttactLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
           // if(Session["isManger"].ToString()=="no")
             //   Response.Redirect("Home.aspx");

            if (!IsPostBack)
            {
                GridView1.DataSource = con.GetInquiries();
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.DataSource = con.GetInquiries();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int x = e.RowIndex;
                    CheckBox chkRow = (GridView1.Rows[x].Cells[4].FindControl("c") as CheckBox);
                    if(chkRow.Checked)
                    {
                       string id = GridView1.Rows[x].Cells[5].Text;
                        con.UpdateInq(Int32.Parse(id));

                    }
            GridView1.DataSource = con.GetInquiries();
            GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = con.GetInquiries();
                GridView1.DataBind();
            }
        }
    }
}