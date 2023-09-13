using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class createsite : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public int id;
    public string uname, dname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["domainname"] != null)
        {
            dname = Session["domainname"].ToString();
            TextBox1.Text = dname;
            uname = Session["username"].ToString();
            id = Convert.ToInt32(Session["id"].ToString());
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('register domain first!!!');", true);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                int fileSize = (int)FileUpload1.FileBytes.Length;
                double files = (double)FileUpload1.FileBytes.Length;
                double fileinkb = (double)fileSize / (1024);
                string mem12 = Session["memory"].ToString();
                double mem = Convert.ToDouble(mem12);

                string filename = Path.GetFileName(FileUpload1.FileName);
                string dt = DateTime.Now.ToString("HHmmss");
                FileUpload1.SaveAs(Server.MapPath("~/html/") + dt + filename);
                string fullpath = "~/html/" + dt + filename;

                con.Open();
                string name = Session["username"].ToString();
                SqlCommand cm = new SqlCommand("select Count from signup where name='" + name + "'", con);
                SqlDataReader dr = cm.ExecuteReader();
                
                if (dr.Read())
                {
                    string a = dr[0].ToString();
                   dr.Close();
                    con.Close();
                   int c = Convert.ToInt32(a);
                    if (c <= 3)
                   {
                        if (mem > fileinkb)
                        {

                            cmd = new SqlCommand("update domain set htmlpath='" + fullpath + "',filesize='" + fileSize + "' where domainname='" + TextBox1.Text + "' and owner='" + Session["username"].ToString() + "'", con);
                            con.Open();
                            try
                            {
                                cmd.ExecuteNonQuery();
                                con.Close();

                                string result = "site created successfully";
                                Response.Redirect("result.aspx?result=" + result, false);


                            }
                            catch (Exception ex)
                            {
                               

                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Warning File Exceeded');", true);
                            statuslabel.Text = "your file exceeds the memory plan limit";

                            con.Open();
                            string select = "select isnull(max(Count),0)+1 from signup  where name='" + name + "'";
                            SqlCommand cmd1 = new SqlCommand(select, con);
                            id = Convert.ToInt32(cmd1.ExecuteScalar());
                            SqlCommand cm1 = new SqlCommand("update signup set Count='" + id + "' where name='" + name + "' ", con);
                            cm1.ExecuteNonQuery();
                            con.Close();

                        }
                    }

            else
                    {
                        con.Open();
                        SqlCommand cm2 = new SqlCommand("update signup set Status='Attacker' where name='" + name + "'", con);
                        cm2.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("home.aspx");

                    }
                }
            }

            catch (Exception ex)
            {
                statuslabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
}