using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class REG : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text=null;
        TextBox2.Text=null;
        TextBox3.Text=null;
        TextBox4.Text=null;
        TextBox5.Text=null;
        TextBox6.Text=null;
        TextBox7.Text=null;
        TextBox8.Text=null;
        TextBox10.Text=null;
        TextBox11.Text=null;
        TextBox12.Text=null;
        TextBox13.Text=null;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(CheckBox1.Checked==true)
        {
            string batch = TextBox11.Text + "-" + TextBox10.Text;
            string query = "insert into stu values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + batch + "','" + TextBox7.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";
            bool r = DatabaseAccessCode.InsertData(query);
            if(r==true)
        {
            Response.Write("<script>confirm('DATA INSERTED SUCCESSFULLY')</script>");
        }
          else
        {
             Response.Write("<script>confirm('REGISTRATION FAILED')</script>");

        }
        }
        
        

            else
            {
                Response.Write("<script>confirm('You must be agree with terms and conditions!!')</script>");
            }
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        string fileName = FileUpload1.PostedFile.FileName;
        string fileExtension = System.IO.Path.GetExtension(fileName);
        string fileMimeType = FileUpload1.PostedFile.ContentType;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath(@"CV/" + fileName));
            string file_path = "~/CV/" + fileName;
            Response.Write("File Uploaded Successfully");
        }
    }
}