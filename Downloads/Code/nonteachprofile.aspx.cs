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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string st, cnst;
    protected void Page_Load(object sender, EventArgs e)
    {
        cnst = "Data Source=SFRH\\SQLEXPRESS;Integrated Security=true;database=Examinationbranch";
        con = new SqlConnection(cnst);  


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        st = "insert into nonteachprofile values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + ")";
        cmd = new SqlCommand(st, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("record inserted successfully");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";

    }
}
