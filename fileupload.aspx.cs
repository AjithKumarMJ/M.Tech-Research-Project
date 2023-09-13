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
using System.IO;
using System.Data.SqlClient;

public partial class fileupload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-39S4CB3;Initial Catalog=dynamic;Persist Security Info=True;User ID=sa;Password=saadmin");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = DropDownList1.SelectedValue.ToString();
        Session["category"] = DropDownList1.SelectedValue.ToString();
        string fname = FileUpload1.FileName;
        string spath = Server.MapPath(@"upload/" + fname);
        Session["spath"] = Server.MapPath(@"upload/" + fname);
        Session["fname"] = fname;
        string savepath = spath;
        string fpath = Server.MapPath("upload");
        fpath = fpath + @"\" + FileUpload1.FileName;
        //savepath += fname;
        FileUpload1.SaveAs(savepath);
        Session["filename"] = Path.GetFileName(FileUpload1.FileName);
        Session["fileextension"] = Path.GetExtension(FileUpload1.FileName);
        Session["files"] = (float)FileUpload1.PostedFile.ContentLength / 1024;
        Session["filepath"] = savepath;
        con.Open();
        string id = Session["count"].ToString();
                string name = Session["name"].ToString();
        SqlCommand cmd2 = new SqlCommand("Insert into fileupload values('" + id + "','" + name + "','" + spath + "','" + Session["filename"].ToString() + "')", con);
        cmd2.ExecuteNonQuery();
        con.Close();
    }
}
