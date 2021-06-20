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
    public partial class Join2Table : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if(!IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            cmd.CommandText = "SELECT * FROM StudentJoin FULL OUTER JOIN Department ON StudentJoin.Id = Department.Id;";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            //DataSet ds = new DataSet();
            da.Fill(dt);
            con.Open();
            int index = cmd.ExecuteNonQuery();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        //protected void btnsubmit_Click(object sender, EventArgs e)
        //{
           
        //    cmd.CommandText = "Insert into StudentJoin(Roll_No,Name,Email,Address)values("+ txtrollno .Text+ ",'" + txtname.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "')";
        //    con.Open();
        //    int index = cmd.ExecuteNonQuery();
        //    if (index > 0)
        //    {
        //        Response.Write("<script>alert('Insert Data Successfully.')</script>");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Failed..........')</script>");
        //    }
        //    con.Close();
        //}
    }
}