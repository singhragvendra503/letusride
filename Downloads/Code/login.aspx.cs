using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=IBINNOS-3C3A88B\\SQLEXPRESS;database=examb;Integrated Security=true");
      cn.Open();
        cmd = new SqlCommand("select count (*) from login where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
        int y = Convert.ToInt16(cmd.ExecuteScalar());
        if (y == 1)
        {
            Response.Redirect("afteruserlogin.aspx");
        }
        //cn.Close();
    }
}
