using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogX
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["ID"] != null && Request.Cookies["Password"] != null)
                {
                    TextBox1.Text = Request.Cookies["ID"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from User_LogIn_tbl where ID='"+ TextBox1.Text.Trim() +"' and Password='"+ TextBox2.Text.Trim() +"';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["ID"].Value = TextBox1.Text;
                        Response.Cookies["Password"].Value = TextBox2.Text;
                        Response.Cookies["ID"].Expires = DateTime.Now.AddMinutes(1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(1);
                    }
                    else
                    {
                        Response.Cookies["ID"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }


                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Log In Successfull.😎');</script>");
                        Session["userid"] = dr.GetValue(0).ToString();
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(9).ToString();
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Info');</script>");
                }
            }
            catch (Exception ex)
            {

                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_up_page.aspx");
        }
    }
}