using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Data;
using System.Text;
using System.Data.SqlClient;


namespace WebAppH
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // This code show how to upload content 

            //if (FileUpload1.HasFile)
            //{
            //    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
            //}
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
            {

                FileInfo fi = new FileInfo(strFile);
                dt.Rows.Add(fi.Name, fi.Length, GetfileTypeByExtension(fi.Extension));


            }
            //GdV1.DataSource = dt;
            //GdV1.DataBind();
        }
        private string GetfileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case "doc":
                case "docx":
                    return " Microsoft word Document";
                case "xlsx":
                case "xls":
                    return " Microsoft Excel Document";
                case "text":
                    return " Texty Document";
                case ".jpg":
                case "png":
                    return " Image";
                default:
                    return "Uknown";
            }
        }

        protected void GridViewRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposation", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();

            }
            }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}