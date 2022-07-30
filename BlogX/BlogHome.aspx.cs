using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mime;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BlogX
{
    public partial class BlogHome : System.Web.UI.Page
    {

        

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    Button2.Visible=false;
                }


            }
            catch (Exception ex)
            {

            }

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //post
            try
            {
                
                
                MakePost();
                
            }
            catch (Exception ex)
            {
                

            }



        }
        

        void MakePost()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Post_tbl (User_ID,Post_Title,Post_Body,Tag,Time) values (@User_ID,@Post_Title,@Post_Body,@Tag,@Time)", con);

                cmd.Parameters.AddWithValue("@User_ID", Session["username"].ToString());
                cmd.Parameters.AddWithValue("@Post_Title", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Post_Body", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Tag", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Time", DateTime.Now);

                

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Post Created...!!  👍👍👍');</script>");
                ClearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void ClearForm()
        {
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
        }
    }
}