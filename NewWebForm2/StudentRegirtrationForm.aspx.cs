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
    public partial class StudentRegirtrationForm : System.Web.UI.Page
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
            //if (!IsPostBack)     //  IsPostBack(Second click (Time))
            //{
            //    LoadData();
            //}
        }

       
        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert into Student_Registration(S_Name,Class,Fees,Cources,DOB,Username,Password,Confirm_Password,Email,Mob_No,Address,Pin_Code,City,State)values('" + txtname.Text + "','" + txtclass.Text + "'," + txtfees.Text + ",'" + txtcourse.Text + "','" + txtDOB.Text + "','"+ txtusename.Text+"','"+ txtpass.Text+"','"+ txtcpass.Text+"','"+ txtemail.Text+"','"+ txtmob.Text+"','"+ txtaddress.Text+"',"+ txtpincode.Text+",'"+ city.Text+"','"+ State.Text+"')";
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
