using Prod_ch.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prod_ch
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            err.Visible = false;
            err2.Visible = false;
        }

        protected void btn_login(object sender, EventArgs e)
        {
            SqlConnection cn = Connection.getconnection();
      
            cn.Open();
          
            string sql = "select count(*) from Magasin where NomResponsable='" + username.Text + "' and PWResponsable='" + passwd.Text + "' ";
            
            SqlCommand cmd = new SqlCommand(sql, cn);
         
            String i = cmd.ExecuteScalar().ToString();
        

            if ( i=="1")
            {
                int t = CRUD.DAL.gettest(username.Text);
                if (t == 1)
                {
                    Session["username"] = username.Text;

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    err2.Visible = true;
                }
             
            }
            else
            {
            
                err.Visible = true;
            }
        }
    }
}