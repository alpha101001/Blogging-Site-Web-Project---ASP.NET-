using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogX
{
    public partial class UserManagebyAdmin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //update
            if (CheckUserExists())
            {
                updateUserName();

            }
            else
            {
                Response.Write("<script>alert('User Name Updated Successfully!!!');</script>");
                ClearBox();
            }

        }

        void updateUserName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd =
                    new SqlCommand(
                        "UPDATE User_LogIn_tbl SET UserName=@username where ID='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("username", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Name Updated Successfully!!!')</script>");

            }
            catch (Exception ex)
            {

            }
        }
        bool CheckUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd =
                    new SqlCommand("select * from User_LogIn_tbl where id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }





            }
            catch (Exception ex)
            {
                Response.Write("<script>Swal.fire('" + ex.Message + "');</script>");
                return false;
            }

        }

        void ClearBox()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            //go 
            if (CheckUserExists())
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from User_LogIn_tbl where id='" + TextBox1.Text.Trim() + "';",
                    con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    TextBox2.Text = dt.Rows[0]["UserName"].ToString();
                }
            }

            

            
        }
    }
}