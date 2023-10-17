using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class membermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Go Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }
        //Active Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("active");
        }
        //pending Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("pending");
        }
        //deactive Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("deactive");
        }
        //Delete User Button
        protected void Button2_Click1(object sender, EventArgs e)
        {
            deleteMemberByID();
        }

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State== ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from member_master_tbl where member_id='"+TextBox1.Text.Trim()+"'",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();//full name
                        TextBox3.Text = dr.GetValue(1).ToString();//date of birth
                        TextBox4.Text = dr.GetValue(2).ToString();//contact number
                        TextBox5.Text = dr.GetValue(3).ToString();//email id
                        TextBox6.Text = dr.GetValue(10).ToString();//account statue
                        TextBox7.Text = dr.GetValue(7).ToString();//address

                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        void updateMemberStatusByID(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Update member_master_tbl set account_status='" + status + "' where member_id='"+TextBox1.Text.Trim()+"' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Member Status Updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        void deleteMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State== ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Delete from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'   ", con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                Response.Write("<script>alert('Member Deleted');</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
        


    }
}