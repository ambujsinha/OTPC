using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string query = "insert into fed values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        bool r = DatabaseAccessCode.InsertData(query);
        if (r == true)
        {
            Response.Write("<script>confirm('Thank You')</script>");
        }
        else
        {
            Response.Write("<script>confirm('FAILED')</script>");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
    }
}