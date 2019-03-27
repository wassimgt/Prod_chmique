using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prod_ch
{
    public partial class Home1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string s =(string)Session["username"];
            int i = CRUD.DAL.getidmgcourant(s);
            Session["id"] = i;


        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void logout(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }

        protected void btok_Click(object sender, EventArgs e)
        {
           
        // 
        //CRUD.DAL.UpdateA(idmg);
        //    this.Page_Load(sender,e);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //protected void btok_Click(object sender, EventArgs e)
        //{  
        //    System.Diagnostics.Debug.WriteLine("le id ................."+xxx.Text);
        //}
    }
}