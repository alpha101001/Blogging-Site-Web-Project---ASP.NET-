using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
//using System.Windows.Forms;

namespace BlogX
{
    public partial class UserManagebyAdminDetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            getBlog();

        }


        void getBlog()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from User_LogIn_tbl where id='"+ TextBox1.Text.Trim() +"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {


                    TextBox2.Text = dt.Rows[0]["UserName"].ToString();
                    TextBox4.Text = dt.Rows[0]["E_Mail"].ToString();
                    TextBox8.Text = dt.Rows[0]["Date_of_Birth"].ToString();
                    TextBox9.Text = dt.Rows[0]["Division"].ToString();
                    TextBox10.Text = dt.Rows[0]["City"].ToString();
                    TextBox11.Text = dt.Rows[0]["Pin_Code"].ToString();
                    TextBox3.Text = dt.Rows[0]["Mobile_No"].ToString();

                }

                else
                {
                    Response.Write("<script>alert('Invalid User ID');</script>");
                }








            }
            catch (Exception ex)
            {

            }

        }


        void deleteUser()
        {
            try
            {
                if (CheckUserExists())
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("delete from User_LogIn_tbl where id='" + TextBox1.Text.Trim() + "';", con);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('User Deleted Successfully. But the post will remain as it is..');</script>");



                }
                else
                {
                    Response.Write("<script>alert('Enter a User ID');</script>");
                }


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

                SqlCommand cmd = new SqlCommand("select * from User_LogIn_tbl where id='" + TextBox1.Text.Trim() + "';", con);
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



                con.Close();

                Response.Write("<script>alert('Sign Up Successfully.  Go to User Log In Page to Log In');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>Swal.fire('" + ex.Message + "');</script>");
                return false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteUser();

        }
    }
}