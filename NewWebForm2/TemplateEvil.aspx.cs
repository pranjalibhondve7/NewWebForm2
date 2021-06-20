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
    public partial class TemplateEvil : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from Employee_Details", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GV_List.DataSource = dt;
                GV_List.DataBind();
            }

        
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "images/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
            con.Open();
            cmd.CommandText = "Insert into Employee_Details(EmpId,Emp_Name,Emp_Email,Emp_Mob_No,Emp_Image)values(" + txtid.Text + ",'" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + filepath + "')";

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
    }
    }
    
