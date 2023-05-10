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
    SqlCommand cmd1,cmd2,cmd3,cmd4,cmd5,cmd6;

    string st1,st2,st3,st4,st5,st6, cnst;
    protected void Page_Load(object sender, EventArgs e)
    {
        cnst = "Data Source=SFRH\\SQLEXPRESS;Integrated Security=true;database=Examinationbranch";
        con = new SqlConnection(cnst); 

   }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
       
        st1 = "delete from monday where userid=" + txtFcode.Text;
        cmd1 = new SqlCommand(st1, con);
        cmd1.ExecuteNonQuery();
        st2 = "delete from tuesday where userid=" + txtFcode.Text;
        cmd2 = new SqlCommand(st2, con);
        cmd2.ExecuteNonQuery();
        st3 = "delete from wednesday where userid=" + txtFcode.Text;
        cmd3 = new SqlCommand(st3, con);
        cmd3.ExecuteNonQuery();
        st6 = "delete from thrusday where userid=" + txtFcode.Text;
        cmd6 = new SqlCommand(st6, con);
        cmd6.ExecuteNonQuery();
        st4 = "delete from  friday where userid=" + txtFcode.Text;
        cmd4 = new SqlCommand(st4, con);
        cmd4.ExecuteNonQuery();
        st5 = "delete from saturday where userid=" + txtFcode.Text;
        cmd5 = new SqlCommand(st5, con);
        cmd5.ExecuteNonQuery();

        con.Close();

        Response.Redirect("record deleted successfully");

    }
}
