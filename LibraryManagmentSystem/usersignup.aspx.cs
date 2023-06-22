using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagmentSystem
{
    public partial class usersignup : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkMember())
            {
                Response.Write("<script>alert('This Id already exists use another ID');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }
        bool checkMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand command = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id = '"+TextBox8.Text.Trim()+"' ");
                SqlDataAdapter da = new SqlDataAdapter(command);
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
            }
            catch(Exception ex) 
            { 
            }

            return false;
        }
        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand command = new SqlCommand("INSERT INTO member_master_tbl(full_name , dob , contact_no , email , state , city , pincode , full_address , member_id , password , account_status) Values (@full_name , @dob , @contact_no , @email , @state , @city , @pincode , @full_address , @member_id , @password , @account_status)", con);

                command.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                command.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                command.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                command.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                command.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                command.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                command.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                command.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
                command.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                command.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                command.Parameters.AddWithValue("@account_status", "pending");

                command.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Sign Up successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}