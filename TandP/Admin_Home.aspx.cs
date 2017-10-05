using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["eid"] == null)
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["eid"] = null;
        Response.Redirect("Home.aspx");
    }
    
}