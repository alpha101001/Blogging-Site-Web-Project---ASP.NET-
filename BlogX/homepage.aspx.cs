using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogX
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostInventory.aspx");
        }
        
        protected void Img1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_up_page.aspx");
        }
    }
}