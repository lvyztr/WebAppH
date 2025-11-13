using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebAppH
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AlumniConnectConnectionString"].ConnectionString);
        //    conn.Open();
        //    string checkUser = "select count (*) from AlumniRegistration where UserName='" + txtUser.Text + "'";
        //    SqlCommand comm = new SqlCommand(checkUser, conn);
        //    int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
        //    conn.Close();
        //    if (temp == 1)
        //    {
        //        conn.Open();
        //        string checkPass = "select Password from AlumniRegistration where UserName='" + txtUser.Text + "'";
        //        SqlCommand checkPassComm = new SqlCommand(checkPass, conn);
        //        string password = checkPassComm.ExecuteScalar().ToString();

        //        if (password == txtLoginPass.Text)
        //        {
        //            Session["New"] = txtUser.Text;
        //            Response.Redirect("HomePage.aspx");

        //        }
        //        else
        //        {
        //            Response.Write("Your password is incorrect");
        //        }

        //    }
        //    else
        //    {
        //        Response.Write("username is incorrect");
        //    }
        //}

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LIKHONA\SQLEXPRESS;Initial Catalog=AlumniConnect;Integrated Security=True");
            con.Open();
            String qry = "Select Status from login where Username ='" + txtUsername.Text + "' and Password='" + txtPass.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (this.txtUsername.Text == "")
            {
                // Fixed: Use Response.Write for web applications instead of Messagebox.Show
                Response.Write("<script>alert('please enter Username...');</script>");
            }
            if (this.txtPass.Text.Length == 0)
            {
                // Fixed: Use Response.Write for web applications instead of messagebox.show
                Response.Write("<script>alert('please Enter password');</script>");
            }
            if (dt.Rows.Count == 1)
            {
                Response.Redirect("Alumnipage.aspx");
            }
        }
    }
}