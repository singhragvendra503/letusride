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
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=SFRH\\SQLEXPRESS;database=Examinationbranch;Integrated Security=true");
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from addprofile", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "addprofile");
        GridView1.DataSource = ds.Tables["addprofile"];
        GridView1.DataBind();
        cn.Close();

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
