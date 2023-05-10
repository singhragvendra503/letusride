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
    SqlCommand cmd1;
    string st1, cnst;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

        cnst = "Data Source=SFRH\\SQLEXPRESS;Integrated Security=true;database=Examinationbranch";
        con = new SqlConnection(cnst);  

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from addprofile where userid like '" + txtFcode.Text + "%'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "addprofile");
        GridView1.DataSource = ds.Tables["addprofile"];
        GridView1.DataBind();

        //st1 = "select *  from addprofile where userid=" + txtFcode.Text;
        //cmd1 = new SqlCommand(st1, con);
        //dr = cmd1.ExecuteReader();
        //if (dr.Read() == true)
        //{
        //    txtFcode.Text = dr.GetString(0);
        //}
        //else
        //{
        //    Response.Redirect("fdfa");
        //}
        //dr.Close();
        con.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
