using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;
        TextBox6.Text = null;
        TextBox7.Text = null;
        TextBox14.Text =null;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            string query = "insert into com values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox14.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','"+ TextBox5.Text + "')";
            bool r = DatabaseAccessCode.InsertData(query);
            if (r == true)
            {
                //Response.Write("<script>confirm('DATA INSERTED SUCCESSFULLY')</script>");
                Response.Redirect("Home.aspx");
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
        string fileName = FileUpload2.PostedFile.FileName;
        string fileExtension = System.IO.Path.GetExtension(fileName);
        string fileMimeType = FileUpload2.PostedFile.ContentType;
        int fileLengthInKB = FileUpload2.PostedFile.ContentLength / 1024;
        string[] matchExtension = { ".jpg", ".png", ".gif" };
        string[] matchMimeType = { "image/jpeg", "image/png", "image/gif" };
        if (FileUpload2.HasFile)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("Please Enter File Name");
            }
            if (matchExtension.Contains(fileExtension) && matchMimeType.Contains(fileMimeType))
            {
                if (fileLengthInKB <= 1024)
                {
                    FileUpload2.SaveAs(Server.MapPath(@"Image/" + fileName));
                    string file_path = "~/Image/" + fileName;
                    Image1.ImageUrl = file_path;
                    Response.Write("File Uploaded Successfully");
                }
                else
                {
                    Response.Write("Please Choose a file less than 1MB");
                }
            }
            else
            {
                Response.Write("Please Choose only jpg, png or gif file");
            }
        }
        else
        {
            Response.Write("Please Choose a File");
        }
    }
}