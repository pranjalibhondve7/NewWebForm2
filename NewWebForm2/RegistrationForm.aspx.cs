using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebForm2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string name;
        string email;
        string mob_no;
        string tgender;
        string taddress;
        string tdob;
        string tcity;
        string tstate;
        string tuser;
        string tpass;
        string tcpass;


        protected void Page_Load(object sender, EventArgs e)
        {

            name = txtname.Text;
            email = txtemail.Text;
            mob_no = txtMobno.Text;
            taddress = Address.Text;
            tcity = city.Text;
            tstate = State.Text;
            tuser = txtuser.Text;
            tpass = txtpass.Text;
            tcpass = comfpass.Text;
            tdob = txtDOB.Text;

            if (male.Checked)
            {
                tgender = "Male";
            }
            else if (female.Checked)
            {
                tgender = "Female";
            }
            else
            {
                tgender = "Others";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Name : " + name + "<br>");
            Response.Write("Email : " + email + "<br>");
            Response.Write("Address : " + taddress + "<br>");
            Response.Write("State : " + tstate + "<br>");
            Response.Write("City : " + tcity + "<br>");
            Response.Write("Username :" + tuser + "<br>");
            Response.Write("Password :" + tpass);
            Response.Write("Gender :" + tgender);
            Response.Write("Mob No :" + mob_no);
            //Response.Write("Pin Code :" + tpincode);


            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg")
            {
                if (FileUpload1.FileName != null)
                {
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
                    imgUser.ImageUrl = "~/images/" + FileUpload1.FileName;
                }
            }

        }
    }
}