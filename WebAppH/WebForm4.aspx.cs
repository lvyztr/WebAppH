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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mainconn= ConfigurationManager.ConnectionStrings["Data Source=LIKHONA\SQLEXPRESS;Initial Catalog=AlumniConnect;Integrated Security=True"].ConnectionString;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand comm = new SqlCommand(mainconn);
        }
    }
}