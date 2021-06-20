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
    public partial class StudentData : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            //Response.Write(cnfg);
            if(!IsPostBack)     //  IsPostBack(Second click (Time))
            {
                LoadData();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert into StudentData(S_Name,Class,Fees,Courses,DOB)values('" + txtname.Text + "','" + txtclass.Text + "'," + txtfees.Text + ",'" + txtcourse.Text + "','" + txtDOB.Text + "')";
            con.Open();
            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Insert Data Successfully.')</script>");
            }

           
            con.Close();
        }

        private void LoadData()
        {
            cmd.CommandText = "Select Roll_No from StudentData ";
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlrollno.DataSource = dr;
                ddlrollno.DataValueField = "Roll_No";
                ddlrollno.DataTextField = "Roll_No";
                ddlrollno.DataBind();
                ddlrollno.Items.Insert(0, "--Select Roll_No");
                ddlrollno.Items.Insert(1, "101");

            }
            con.Close();

        }

        protected void ddlrollno_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd.CommandText= "Select * from StudentData where Roll_No="+ Convert.ToInt32(ddlrollno.SelectedValue);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())

            {
                if (dr["S_Name"] != null)
                {
                    txtname.Text = dr["S_Name"].ToString();
                }
                txtclass.Text = dr["Class"].ToString();
                txtfees.Text = dr["Fees"].ToString();
                txtcourse.Text = dr["Courses"].ToString();
                txtDOB.Text = dr["DOB"].ToString();
                con.Close();
            }

        }

     

        protected void btnUpdate_Click(object sender, EventArgs e)

        {
            
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;

           
           cmd.CommandText= " UPDATE StudentData SET S_Name='"+txtname.Text + "',Class='"+txtclass+ "',Fees='"+ txtfees.Text+ "',Courses='"+txtcourse.Text+ "',DOB='"+txtDOB.Text+ "' where Roll_No=" + Convert.ToInt32(ddlrollno.SelectedValue); 
            con.Open();
            //LoadData();
            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Update Data Successfully.')</script>");
            }


            con.Close();

        }

        //protected void btnDelete_Click(object sender, EventArgs e)
        //{
        //    cmd.CommandText = " UPDATE StudentData SET S_Name='"  where Roll_No=" + Convert.ToInt32(ddlrollno.SelectedValue);
        //    con.Open();
        //    //LoadData();
        //    int index = cmd.ExecuteNonQuery();
        //    if (index > 0)
        //    {
        //        Response.Write("<script>alert('Delete Data Successfully.')</script>");
        //    }


        //    con.Close();
        //}
    }
}