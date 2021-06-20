using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebForm2
{
    public partial class LoginPage : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from Student_Registration where Username= '" + txtuser.Text + "' and Password='" + txtpass.Text + "'";

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("<script>alert('Login Successfull.')</script>");
            }
            else
            {
                Response.Write("<script>alert('Login InSuccessfull.')</script>");
            }
                

            //int index = cmd.ExecuteNonQuery();
            //if (index > 0)
            //{
            //    Response.Write("<script>alert('Login Successfull.')</script>");
            //}


            con.Close();
        }
    }
}