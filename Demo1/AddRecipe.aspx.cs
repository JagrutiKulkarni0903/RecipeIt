using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection.Emit;

namespace Demo1
{
    public partial class AddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Recipe; Integrated Security=True;");
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Image/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + filename);
                con.Open();
                //SqlCommand cmd = new SqlCommand("insert into recipe values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + filepath + "','" + TextBox4.Text + "')");
                SqlCommand cmd = new SqlCommand("insert into recipe" + "(r_id,r_name,cook,r_image,descreption) values (@r_id,@r_name,@cook,@r_image,@descreption)", con);
                cmd.Parameters.AddWithValue("@r_id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@r_name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@cook", TextBox3.Text);
                cmd.Parameters.AddWithValue("@r_image", filepath);
                cmd.Parameters.AddWithValue("@descreption", TextBox4.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Added Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Home.aspx");
            }
        
        }
    }
}