using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class userlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select id,Count from signup where name='" + TextBox1.Text + "' and Count='4'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Write("<Script>alert('Your Account Block');window.location='userlogin.aspx';</script>");           

        }
        else
        {
            dr.Close();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select * from signup where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                Session["id"] = dr1[0].ToString();             
               
                Session["username"] = TextBox1.Text;
                Response.Redirect("domainreg.aspx");              

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid username/password');", true);
            }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
}
