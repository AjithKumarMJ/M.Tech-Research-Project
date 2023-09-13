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

public partial class domainregisterform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["domainname"].ToString();
        TextBox1.Text = Session["username"].ToString();
        id = Convert.ToInt32(Session["id"].ToString());
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from domain where domainname='www.'+'" + TextBox1.Text + DropDownList1.SelectedValue.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            dr.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('site already hosted!!!');", true);



        }
        else
        {
            String today = DateTime.Today.ToString("dd/M/y");
            //cmd = new SqlCommand("insert into domain values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + today + "','" + id + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','','Pending','','','','','','','','')", con);
           SqlCommand  cmd1 =new SqlCommand ("insert into domain values ('"+TextBox2.Text+"','"+TextBox1.Text+"','"+today+"','"+id+"','"+DropDownList1.SelectedItem.ToString()+"','"+DropDownList2.SelectedItem.ToString()+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox6.Text+"','','Pending','','','','','','','','')",con);
            dr.Close();
            Session["memory"] = DropDownList2.SelectedValue.ToString();
            //try
            //{
            cmd1.ExecuteNonQuery();
                con.Close();


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox4.Text = "";
                Response.Redirect("payment.aspx");




            //}
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error!!!');", true);

            //}
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
