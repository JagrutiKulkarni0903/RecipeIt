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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Recipe; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("select * from register where email='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "Login Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Login again";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
        
    }
}