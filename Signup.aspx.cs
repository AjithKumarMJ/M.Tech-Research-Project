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

public partial class Signup : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
        SqlCommand cmd;
        con.Open();

        //cmd= new SqlCommand("Select * from "


        cmd = new SqlCommand("insert into signup(name,password,gender,dob,mail,reentermail,mobile) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registered Successfully!!!');", true);
        Response.Redirect("userlogin.aspx");

        //con.Open();
        //try
        //{
           
            
        //    Session["user"] = TextBox1.Text;
        //    Session["mobileno"] = TextBox6.Text;

        //    // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registered Successfully!!!');", true);
        //    //TextBox1.Text = "";
        //    //TextBox2.Text = "";
        //    //TextBox3.Text = "";
        //    //TextBox5.Text = "";
        //    //TextBox6.Text = "";

           
            

        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('UserName Already Exist!!! Change the UserName!!!');", true);

        //}
    }
}
