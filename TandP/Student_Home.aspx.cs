﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if(Session["std_eid"]==null)
        {
            Response.Redirect("Home.aspx");
        }
        
        DataSet ds=DatabaseAccessCode.FetchData("select name,email from stu where email='" + Session["std_eid"].ToString() + "'");
        Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}