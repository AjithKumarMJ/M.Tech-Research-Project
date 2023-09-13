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

public partial class payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["domainname"].ToString();
        // TextBox1.Text = Session["username"].ToString();
        id = Convert.ToInt32(Session["id"].ToString());
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("update domain set webhostplan='" + DropDownList2.SelectedValue.ToString() + "',payment='" + DropDownList3.SelectedValue.ToString() + "',cardno='" + TextBox2.Text + "',cardexpire='" + TextBox3.Text + "',cvv2='" + TextBox4.Text + "' where domainname='" + TextBox1.Text + "' and owner='" + Session["username"].ToString() + "'", con);
        con.Open();
        try
        {
            cmd.ExecuteNonQuery();
            con.Close();

            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            TextBox4.Text = "";
            string result = "Register successfully";
            Response.Redirect("result.aspx?result=" + result);



        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('UserName Already Exist!!! Change the UserName!!!');", true);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
