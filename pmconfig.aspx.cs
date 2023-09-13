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

public partial class pmconfig : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        tblconfig.Visible = false;
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select pmname FROM pm", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "pmname";
            DropDownList1.DataValueField = "pmname";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            con.Close();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from pm where pmname='" + DropDownList1.SelectedItem.ToString() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            tblconfig.Visible = true;
            Label2.Text = dr[1].ToString();
            Label4.Text = dr[2].ToString();
            Label6.Text = dr[3].ToString();
            Label8.Text = dr[4].ToString();
            Label10.Text = dr[7].ToString();
            Label12.Text = dr[8].ToString();

        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid ');", true);



        }
        con.Close();
    }
}
