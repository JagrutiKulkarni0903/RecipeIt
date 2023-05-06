using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Demo1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Recipe; Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register"+ "(f_name,l_name,email,ph_no,pass) values (@f_name,@l_name,@email,@ph_no,@pass)",con);
            cmd.Parameters.AddWithValue("@f_name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@l_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ph_no", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox5.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Registered Successfully";
            Label1.ForeColor = System.Drawing.Color.Green;
            Response.Redirect("Login.aspx");

        }
    }
}