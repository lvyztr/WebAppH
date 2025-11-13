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
    public partial class Update_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                int years = 1980;
                do
                {
                    drpMatricYear.Items.Add(years.ToString());
                    drpGradDate.Items.Add(years.ToString());
                    years++;

                }
                while (years <= 2019);
            }

        }



        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            //error handling with try catch
            try
            {
                //database connection and inserting data
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Alumni ConnectConnectionString"].ConnectionString);
                conn.Open();
                string insertData = "insert into AlumniDetails (Title,Initial,Cellphone,Address,City,PostalCode,Country,HighSchool,MatricYear,University,Degree,StudyField,GraduationYear,Company,Position) values (@Title,@initial,@cellphone ,@address ,@city ,@postcode ,@country ,@school ,@matricyr ,@university ,@degree ,@studyfield ,@gradyr ,@company ,@position)";
                SqlCommand comm = new SqlCommand(insertData, conn);
                comm.Parameters.AddWithValue("@title", drpTitle.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@initial", txtInitial.Text);
                comm.Parameters.AddWithValue("@cellphone", txtcell.Text);
                comm.Parameters.AddWithValue("@address", txtAddress.Text);
                comm.Parameters.AddWithValue("@city", txtCity.Text);
                comm.Parameters.AddWithValue("@postcode", txtPostalCode.Text);
                comm.Parameters.AddWithValue("@country", drpCountry.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@school", txtSchool.Text);
                comm.Parameters.AddWithValue("@matricyr", drpMatricYear.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@university", drpUniversty.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@degree", drpDegree.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@studyfield", drpStudyField.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@gradyr", drpGradDate.SelectedValue.ToString());
                comm.Parameters.AddWithValue("@company", txtCompanyName.Text);
                comm.Parameters.AddWithValue("@position", txtPosition.Text);
                comm.ExecuteNonQuery();
                Response.Redirect("HomePage.aspx");
                Response.Write("Welcome");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}