using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace NewWebForm2
{

    public partial class GridViewTask1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            
            if (!IsPostBack)
            {
                BindData();
                //LoadData();
            }

        }

        protected void BindData()
        {
            cmd.CommandText = "Select * from Grid_Details";
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

        //private void LoadData()
        //{
        //    cmd.CommandText = "Select Roll_No from Grid_Details ";
        //    con.Open();
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ddlRollNo.DataSource = dr;
        //        ddlRollNo.DataValueField = "Roll_No";
        //        ddlRollNo.DataTextField = "Roll_No";
        //        ddlRollNo.DataBind();
        //        ddlRollNo.Items.Insert(0, "--Select Roll_No--");
        //        ddlRollNo.Items.Insert(1, "100");

        //    }
        //    con.Close();

        //}

        

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "images/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
            con.Open();
            cmd.CommandText = "Insert into Grid_Details(Name,Email,Phone_No,Address,Pincode,Photo)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtaddress.Text + "'," + txtpincode.Text + ",'" + filepath + "')";

            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Insert Data Successfully.')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed..........')</script>");
            }
            con.Close();
        }


        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{
        //    cmd.CommandText = " UPDATE Grid_Details SET  Name='" + txtname.Text + "',Email='" + txtemail + "',Phone_No='" + txtphone.Text + "',Address='" + txtaddress.Text + "',Pincode='" + txtpincode.Text + "',Photo='" + filepath + "' where Roll_No= " + Convert.ToInt32(ddlRollNo.SelectedValue);
        //    con.Open();
        //    //LoadData();
        //    int index = cmd.ExecuteNonQuery();
        //    if (index > 0)
        //    {
        //        Response.Write("<script>alert('Update Data Successfully.')</script>");
        //    }


        //    con.Close();

        //}

        //protected void ddlRollNo_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    cmd.CommandText = "Select * from Grid_Details where Roll_No=" + Convert.ToInt32(ddlRollNo.SelectedValue);
        //        con.Open();
        //        SqlDataReader dr = cmd.ExecuteReader();
        //        if (dr.Read())

        //        {
        //            if (dr["Name"] != null)
                    
        //                txtname.Text = dr["Name"].ToString();
        //            }
        //            txtemail.Text = dr["Email"].ToString();
        //            txtphone.Text = dr["Phone_No"].ToString();
        //            txtaddress.Text = dr["Address"].ToString();
        //          txtpincode.Text = dr["Pincode"].ToString();
        //            //filepath = dr["Photo"].ToString();
        //            con.Close();
        //        }
        //    }
        //}

       

      
    } 
}
