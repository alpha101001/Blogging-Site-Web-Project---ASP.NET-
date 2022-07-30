using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogX
{
    public partial class blog : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //home
                    LinkButton2.Visible = true; //show blogs
                    LinkButton3.Visible = false; //Write a Blog
                    LinkButton5.Visible = true; //User LogIn
                    LinkButton6.Visible = true; //Register


                    LinkButton8.Visible = true; //Admin Login
                    LinkButton9.Visible = false; //Post Inventory
                    LinkButton15.Visible = false; //User Management
                    LinkButton16.Visible = false; //Hello User
                    LinkButton17.Visible = false; //Log Out
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = true; //home
                    LinkButton2.Visible = true; //show blogs
                    LinkButton3.Visible = true; //Write a Blog
                    LinkButton5.Visible = false; //User LogIn
                    LinkButton6.Visible = false; //Register


                    LinkButton8.Visible = true; //Admin Login
                    LinkButton9.Visible = false; //Post Inventory
                    LinkButton15.Visible = false; //User Management
                    LinkButton16.Visible = true; //Hello User
                    LinkButton16.Text = "Hello " + Session["username"].ToString();
                    LinkButton17.Visible = true; //Log Out

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = true; //home
                    LinkButton2.Visible = true; //show blogs
                    LinkButton3.Visible = false; //Write a Blog
                    LinkButton5.Visible = false; //User LogIn
                    LinkButton6.Visible = false; //Register


                    LinkButton8.Visible = false; //Admin Login
                    LinkButton9.Visible = true; //Post Inventory
                    LinkButton15.Visible = true; //User Management
                    LinkButton16.Visible = true; //Hello User
                    LinkButton16.Text = "Hello Admin";
                    LinkButton17.Visible = true; //Log Out

                }
            }
            catch (Exception ex)
            {


            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostInventory.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BlogHome.aspx");
        }
         protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_up_page.aspx");
        }
        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagebyAdmin.aspx");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostInventory.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        // log out
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            
            Session["userid"] = "";
            Session["username"] = "";
            Session["role"] = null;
            Session["status"] = "";
            LinkButton1.Visible = true; //home
            LinkButton2.Visible = true; //show blogs
            LinkButton3.Visible = false; //Write a Blog
            LinkButton5.Visible = true; //User LogIn
            LinkButton6.Visible = true; //Register


            LinkButton8.Visible = true; //Admin Login
            LinkButton9.Visible = false; //Post Inventory
            LinkButton15.Visible = false; //User Management
            LinkButton16.Visible = false; //Hello User
            LinkButton17.Visible = false; //Log Out

            Response.Redirect("homepage.aspx");
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.github.com/alpha101001");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://facebook.com/king101001");
        }

     
    }
}