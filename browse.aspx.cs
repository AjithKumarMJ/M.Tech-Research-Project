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

public partial class browse : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    public int id2, cpuage;
    string vm;
    string pmname;
    int cpuut;
    int hot;
    int cold;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        browse12();
    }




    public void browse12()
    {
        try
        {
            con.Open();
            cmd = new SqlCommand("select htmlpath,vm from domain where domainname='" + TextBox1.Text + "' and status='hosted'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string fpath = dr[0].ToString();
                vm = dr[1].ToString();
                vm = vm.Trim();
                dr.Close();
                id1();
                pmcpu();
                cpuu();
                updates();
                migration();

                Response.Redirect(fpath);







            }
            else
            {
                dr.Close();
                Label1.Visible = true;
                Label1.Text = "Domain not exist";

            }




        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = "Domain not exist";
        }
        finally
        {

        }




    }



    public void id1()
    {
        string select = "select isnull((hitcount),0)+1 from domain where domainname='" + TextBox1.Text + "'";
        SqlCommand cmd1 = new SqlCommand(select, con);
        id2 = Convert.ToInt32(cmd1.ExecuteScalar());
    }



    public void pmcpu()
    {

        cmd = new SqlCommand("select pm from vm where vmname='" + vm + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            pmname = dr[0].ToString();
            dr.Close();
        }
    }



    public void skewness()
    {

        cmd = new SqlCommand("select top 1 * from pm where cpu = (select min(cpu) from pm); ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            int cpuuuu = Convert.ToInt16(dr[0].ToString());
            string pmmane = dr[1].ToString();
            int f1 = Convert.ToInt16(dr[2].ToString());
            int f2 = Convert.ToInt16(dr[3].ToString());
            int f3 = Convert.ToInt16(dr[4].ToString());
            int cpuusage = Convert.ToInt16(dr[5].ToString());
            if (cpuusage < f3)
            {
                dr.Close();
                cmd = new SqlCommand("update vm set pm='" + pmmane + "'  where vmname='" + vm + "'", con);

                cmd.ExecuteNonQuery();

                log(pmname, pmmane);

            }
            else
            {

            }


            dr.Close();
        }
    }









    public void skewness1()
    {

        cmd = new SqlCommand("select top 1 * from pm where cpu = (select min(cpu) from pm); ", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            int cpuuuu = Convert.ToInt16(dr[0].ToString());
            string pmmane = dr[1].ToString();
            int f1 = Convert.ToInt16(dr[2].ToString());
            int f2 = Convert.ToInt16(dr[3].ToString());
            int f3 = Convert.ToInt16(dr[4].ToString());
            int cpuusage = Convert.ToInt16(dr[5].ToString());
            if (cpuusage < f3)
            {
                dr.Close();
                cmd = new SqlCommand("update vm set pm='" + pmmane + "'  where vmname='" + vm + "'", con);

                cmd.ExecuteNonQuery();

                log1(pmname, pmmane);

            }
            else
            {

            }


            dr.Close();
        }
    }










    public void migration()
    {

        cmd = new SqlCommand("select cpu,cold,hot from pm where pmname='" + pmname + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            cpuut = Convert.ToInt16(dr[0].ToString());
            hot = Convert.ToInt16(dr[2].ToString());
            cold = Convert.ToInt16(dr[1].ToString());
            dr.Close();
            if ((hot < cpuut))
            {
                skewness();
            }
            else if ((cold > cpuut))
            {
                skewness1();
            }

            else
            {
            }

        }
    }




    public void cpuu()
    {
        string select = "select isnull((cpu),0)+1 from pm where pmname='" + pmname + "'";
        SqlCommand cmd1 = new SqlCommand(select, con);
        cpuage = Convert.ToInt32(cmd1.ExecuteScalar());
    }





    public void updates()
    {
        cmd = new SqlCommand("update domain set hitcount='" + id2 + "'  where domainname='" + TextBox1.Text + "'", con);

        cmd.ExecuteNonQuery();



        cmd = new SqlCommand("update vm set hitcount='" + id2 + "'  where vmname='" + vm + "'", con);

        cmd.ExecuteNonQuery();


        cmd = new SqlCommand("update pm set cpu='" + cpuage + "'  where pmname='" + pmname + "'", con);

        cmd.ExecuteNonQuery();

    }







    public void log(string from, string to)
    {
        cmd = new SqlCommand("insert into log values('" + from + "','" + to + "','" + DateTime.Now.ToString() + "',' Hot Threshold','','" + vm + "')", con);
        cmd.ExecuteNonQuery();

    }




    public void log1(string from, string to)
    {
        string status = from + "-Turn off";
        cmd = new SqlCommand("insert into log values('" + from + "','" + to + "','" + DateTime.Now.ToString() + "',' cold Threshold','" + status + "','" + vm + "')", con);
        cmd.ExecuteNonQuery();

    }
}
