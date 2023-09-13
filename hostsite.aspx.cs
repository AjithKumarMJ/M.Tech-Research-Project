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

public partial class hostsitet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public string id;
    public double filesize, filesize1;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"].ToString();
        TextBox1.Text = Request.QueryString["domainname"].ToString();
        if (!IsPostBack)
            ddbind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                selectfilesize(TextBox1.Text, id);
        double nwfs = filesize / 1024;
        selectfilesize1();
        double spaceleft = filesize1 - nwfs;

        if (filesize1 > nwfs)
        {

            cmd = new SqlCommand("update domain set vm='" + DropDownList1.SelectedValue.ToString() + "',status='hosted' where domainname='" + TextBox1.Text + "' and id='" + id + "'", con);
            // con.Open();
            try
            {
                cmd.ExecuteNonQuery();


                string result = "Created successfully";

                cmd = new SqlCommand("update vm set spaceleft='" + spaceleft + "' ,Status='hosted'  where vmname='" + DropDownList1.SelectedValue.ToString() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("adminresult.aspx?result=" + result, false);


            }
            catch (Exception ex)
            {


            }
        }
        else
        {
            //statuslabel.Text = "your file exceeds the memory plan limit";
        }

    }




    public void selectfilesize(string dname, string id1)
    {
        con.Open();
        cmd = new SqlCommand("select filesize from domain where domainname='" + dname + "' and id='" + id1 + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            filesize = Convert.ToDouble(dr[0].ToString());
            dr.Close();
        }
        else
        {
            dr.Close();

        }

    }

    public void selectfilesize1()
    {
        // con.Open();
        cmd = new SqlCommand("select spaceleft from vm where vmname='" + DropDownList1.SelectedValue.ToString() + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            filesize1 = Convert.ToDouble(dr[0].ToString());

            dr.Close();
        }
        else
        {
            dr.Close();
        }

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("SELECT [vmname] FROM [vm] WHERE (([Status] = 'Pending') AND ([pm] = '" + DropDownList2.SelectedItem.ToString() + "'))", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);

        DropDownList1.DataTextField = "vmname";
        DropDownList1.DataValueField = "vmname";

        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();

    }
    public void ddbind()
    {
        SqlCommand cmd = new SqlCommand("Select pmname from pm", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);

        DropDownList2.DataTextField = "pmname";
        DropDownList2.DataValueField = "pmname";

        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT [vmname] FROM [vm] WHERE (([Status] = 'Pending') AND ([pm] = '" + DropDownList2.SelectedItem.ToString() + "'))", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        da.Fill(dt);

        DropDownList1.DataTextField = "vmname";
        DropDownList1.DataValueField = "vmname";

        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
    }
}
