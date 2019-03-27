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
    public partial class confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mes.Visible = false;

            
            String chaine;
            chaine = Request.QueryString.Get("key");
            SqlConnection cn = Connection.getconnection();
            cn.Open();
            System.Diagnostics.Debug.WriteLine(""+chaine);
            string sql = "update Magasin SET text=1 where cle='"+chaine+"'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            int i = cmd.ExecuteNonQuery();
            if (i==1)
            {
                mes.Visible = true;
            }
        }

    }
}