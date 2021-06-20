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
    public partial class ddlcountryTask : System.Web.UI.Page
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
                CountryBind();
                
            }
        }
        public void CountryBind()
        {
            con.Open();
            cmd.CommandText = "Select * from Country ";


            SqlDataReader dr = cmd.ExecuteReader();
            ddlcountry.DataSource = dr;
            ddlcountry.DataValueField = "C_Id";
            ddlcountry.DataTextField = "C_Name";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "--select country--");

            con.Close();
        }

        public void StateBind()
        {
            cmd.CommandText = "select * from CountryState where C_Id=" + Convert.ToString(ddlcountry.SelectedValue);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddlstate.DataSource = dr;
            ddlstate.DataValueField = "S_Id";
            ddlstate.DataTextField = "S_Name";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, "--select state--");

            con.Close();
        }

        protected void CityLoad()
        {
            cmd.CommandText = "select * from stateCity where S_Id=" + Convert.ToString(ddlstate.SelectedValue);


            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddlcity.DataSource = dr;
            ddlcity.DataValueField = "City_Id";
            ddlcity.DataTextField = "City";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "--select city--");

            con.Close();
        }


        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ddlstate.Enabled = true;
            StateBind();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            CityLoad();
        }

        protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //cmd.CommandText = "Insert into StudentData(country,state,city)values()";
            //con.Open();
            //int index = cmd.ExecuteNonQuery();
            //if (index > 0)
            //{
            //    Response.Write("<script>alert('Insert Data Successfully.')</script>");
            //}


            //con.Close();
        }
    }
}