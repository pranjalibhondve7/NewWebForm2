using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebForm2
{
    public partial class ImageUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string folder = @"c:\Pranju1";

            if (!Directory.Exists(folder))
            {
                Directory.CreateDirectory(folder);
            }
        }
    }
    }
