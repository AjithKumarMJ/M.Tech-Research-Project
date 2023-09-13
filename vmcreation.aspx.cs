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

public partial class vmcreation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public int id, counn, contt;
    decimal filesize;
    public string name;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void spleft()
    {
        con.Open();
        string select = "select spaceleft from pm where pmname='" + DropDownList2.SelectedValue.ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(select, con);
        counn = Convert.ToInt32(cmd1.ExecuteScalar());
        con.Close();
    }
    public void pmcount()
    {
        con.Open();
        string select = "select count(pm) from vm where pm='" + DropDownList2.SelectedValue.ToString() + "'";
        SqlCommand cmd1 = new SqlCommand(select, con);
        contt = Convert.ToInt32(cmd1.ExecuteScalar());
        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() != "choose")
        {

            spleft();
            pmcount();

            if (contt <= 3)
            {
                con.Open();
                //con.Open();
                cmd = new SqlCommand("select * from vm where vmname='" + TextBox2.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Already Vm created on this name!!!');", true);

                }
                else
                {

                    dr.Close();
                    pmspaceleft();
                    update();


                    cmd = new SqlCommand("insert into vm values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DateTime.Now + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "','Pending','')", con);
                    try
                    {
                        dr.Close();
                        cmd.ExecuteNonQuery();
                        con.Close();


                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Vm created!!!');", true);





                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error!!!');", true);

                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('you can create only 4 vm for single pm!!!');", true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Enter all fields correctly!!!');", true);
        }
    }
    public void update()
    {
        decimal fx = Convert.ToDecimal(DropDownList1.SelectedValue.ToString());
        decimal sl = filesize - fx;

        cmd = new SqlCommand("update pm set spaceleft='" + sl + "'  where pmname='" + DropDownList2.SelectedItem.ToString() + "'", con);

        cmd.ExecuteNonQuery();




    }



    public void pmspaceleft()
    {

        cmd = new SqlCommand("select spaceleft from pm where pmname='" + DropDownList2.SelectedValue.ToString() + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            filesize = Convert.ToDecimal(dr[0].ToString());
            dr.Close();
        }
        else
        {
            dr.Close();

        }

    }













    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
