using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebForm2
{
    public partial class GridView : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            BindData();
        }

        protected void BindData()
        {
            string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
            SqlConnection con = new SqlConnection(cnfg);
            SqlCommand cmd = new SqlCommand("Select * from Grid_Details", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Open();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert into Grid_Details(Name,Email,Phone_No,Address,Pincode)values('" + txtname.Text + "','"+ txtemail.Text+"','"+ txtphone.Text+"','"+ txtaddress.Text+"',"+ txtpincode.Text+")";
            con.Open();
            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Insert Data Successfully.')</script>");
            }


            con.Close();
        }
    }
}