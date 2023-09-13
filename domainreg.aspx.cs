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

public partial class domainreg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            con.Open();
            cmd = new SqlCommand("select * from domain where domainname='www.'+'" + TextBox1.Text + DropDownList1.SelectedValue.ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["domainname"] = "www." + TextBox1.Text + DropDownList1.SelectedValue.ToString();
                Label2.Visible = true;
                Label2.Text = "Domain already exist!!!!";

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Domain Available!!!!";


            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from domain where domainname='www.'+'" + TextBox1.Text + DropDownList1.SelectedValue.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["domainname"] = "www." + TextBox1.Text + DropDownList1.SelectedValue.ToString();
            Label2.Visible = true;
            Label1.Visible = false;
            Label2.Text = "Domain already exist!!!!";

        }
        else
        {
            Label2.Visible = false;
            Label1.Visible = true;
            Label1.Text = "Domain Available!!!!";


        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from domain where domainname='www.'+'" + TextBox1.Text + DropDownList1.SelectedValue.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["domainname"] = "www." + TextBox1.Text + DropDownList1.SelectedValue.ToString();
            Label1.Text = "Domain already exist!!!!";

        }
        else
        {

            Session["domainname"] = "www." + TextBox1.Text + DropDownList1.SelectedValue.ToString();
            Response.Redirect("domainregisterform.aspx");


        }
        con.Close();
    }
}
