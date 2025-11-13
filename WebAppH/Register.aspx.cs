using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace WebAppH
{
    public partial class Register : System.Web.UI.Page
    {
     

        protected void Page_Load(object sender, EventArgs e)
        {
            ////checking if user already exists
            //if (IsPostBack)
            //{
            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            //    conn.Open();
            //    string checkUser = "select count (*) from Registration where UserName='"+txtUserName.Text+"'";
            //    SqlCommand comm = new SqlCommand(checkUser, conn);
            //    int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            //    if (temp==1)
            //    {
            //        Response.Write("Username already exists");
            //    }
            //    conn.Close();

            //}
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //error handling with try catch
            try
            {
                //database connection and inserting data
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AlumniConnectConnectionString"].ConnectionString);
                conn.Open();
                string insertData = "insert into AlumniRegistration (UserName,FirstName,LastName,Email,Password) values (@username , @firstname ,@lastname ,@email ,@password)";
                SqlCommand comm = new SqlCommand(insertData, conn);
                comm.Parameters.AddWithValue("@username", txtUserName.Text);
                comm.Parameters.AddWithValue("@firstname", txtFirstName.Text);
                comm.Parameters.AddWithValue("@lastname", txtLastName.Text);
                comm.Parameters.AddWithValue("@email", txtEmail.Text);
                comm.Parameters.AddWithValue("@password", txtPass.Text);
                comm.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("Registration successful!!!");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}