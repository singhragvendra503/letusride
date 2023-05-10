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
        cnst = "Data Source=SFRH\\SQLEXPRESS;database=Examinationbranch;Integrated Security=true";
        con = new SqlConnection(cnst);  
     }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        st1 = "insert into monday values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
        st2 = "insert into tuesday values(" + TextBox1.Text + ",'" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "')";
        st3 = "insert into wednesday values(" + TextBox1.Text + ",'" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "')";
        st4 = "insert into thrusday values(" + TextBox1.Text + ",'" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + TextBox28.Text + "','" + TextBox29.Text + "')";
        st5 = "insert into friday values(" + TextBox1.Text + ",'" + TextBox30.Text + "','" + TextBox31.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + TextBox36.Text + "')";
        st6 = "insert into saturday values(" + TextBox1.Text + ",'" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + TextBox41.Text + "','" + TextBox42.Text + "','" + TextBox43.Text + "')";
        cmd1 = new SqlCommand(st1, con);
        cmd1.ExecuteNonQuery();
        cmd2 = new SqlCommand(st2, con);
        cmd2.ExecuteNonQuery();
        cmd3 = new SqlCommand(st3, con);
        cmd3.ExecuteNonQuery();
        cmd4 = new SqlCommand(st4, con);
        cmd4.ExecuteNonQuery();
        cmd5 = new SqlCommand(st5, con);
        cmd5.ExecuteNonQuery();
        cmd6 = new SqlCommand(st6, con);
        cmd6.ExecuteNonQuery();
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
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        TextBox22.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        TextBox26.Text = "";
        TextBox27.Text = "";
        TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
        TextBox31.Text = "";
        TextBox32.Text = "";
        TextBox33.Text = "";
        TextBox34.Text = "";
        TextBox35.Text = "";
        TextBox36.Text = "";
        TextBox37.Text = "";
        TextBox38.Text = "";
        TextBox39.Text = "";
        TextBox40.Text = "";
        TextBox41.Text = "";
        TextBox42.Text = "";
        TextBox43.Text = "";
        

    }
}
