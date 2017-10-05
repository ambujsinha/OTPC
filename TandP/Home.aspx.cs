using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["eid"] = TextBox1.Text;
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin1234")
        {
            Response.Redirect("Admin_Home.aspx");
        }
        else if (RadioButtonList1.SelectedIndex == 0)
        {
            System.Data.DataSet ds = DatabaseAccessCode.FetchData("select * from stu where email ='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            if (ds.Tables[0].Rows.Count == 1)
            {
                Session["std_eid"] = TextBox1.Text;
                Response.Redirect("Student_Home.aspx");
            }
            else
            {
                Response.Write("<script>confirm('Invalid Username and Password')</script>");
            }
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            System.Data.DataSet ds = DatabaseAccessCode.FetchData("select * from tpo where email ='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            if (ds.Tables[0].Rows.Count == 1)
            {
                Session["tpo_eid"] = TextBox1.Text;
                Response.Redirect("TPO_Home.aspx");
            }
            else
            {
                Response.Write("<script>confirm('Invalid Username and Password')</script>");
            }

        }
        else if (RadioButtonList1.SelectedIndex == 2)
        {
            System.Data.DataSet ds = DatabaseAccessCode.FetchData("select * from com where email ='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            if (ds.Tables[0].Rows.Count == 1)
            {
                Session["cmp_eid"] = TextBox1.Text;
                Response.Redirect("Company_Home.aspx");
            }
            else
            {
                Response.Write("<script>confirm('Invalid Username and Password')</script>");
            }

        }
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedIndex == 0)
        {
            Response.Redirect("Student_Reg.aspx");
        }
        else if (RadioButtonList2.SelectedIndex == 1)
        {
            Response.Redirect("TPO_Reg.aspx");
        }
        else
        {
            Response.Redirect("Company_Reg.aspx");
        }
    }
    
}
