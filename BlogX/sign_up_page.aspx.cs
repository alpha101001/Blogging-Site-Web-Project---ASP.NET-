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
    public partial class sign_up_page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        // sign up button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckUserExists())
            {
                Response.Write("<script>alert('User ID Already Exists.Try Different User ID');</script>");
            }
            else
            {
                SignUpNewUser();
                ClearBox();
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

                SqlCommand cmd = new SqlCommand("select * from User_LogIn_tbl where id='"+TextBox8.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
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

        void ClearBox()
        {
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = null;
            TextBox9.Text = null;
            TextBox2.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox3.Text = "";
           
        }
        void SignUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO User_LogIn_tbl(ID,UserName,E_Mail,Password,Date_of_Birth,City,Division,Pin_Code,Account_Status,Mobile_No) values (@ID,@UserName,@E_Mail,@Password,@Date_of_Birth,@City,@Division,@Pin_Code,@Account_Status,@Mobile_No)", con);
                cmd.Parameters.AddWithValue("@ID", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@E_Mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_of_Birth", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Division", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Pin_Code", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Account_Status", "active");
                cmd.Parameters.AddWithValue("@Mobile_No", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up Successfully.  Go to User Log In Page to Log In');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}