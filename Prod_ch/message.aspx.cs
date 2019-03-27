using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Prod_ch
{
    public partial class message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            To2.Visible = false;
            To.Visible = false;
            mg.Visible = false;
            err.Visible = false;
            string chaine1 = Request.QueryString.Get("id");





            if (Int32.Parse(chaine1)==0)
            {
                To2.Visible = true;
                DataTable dt = CRUD.DAL.selectNomMg();
                foreach (DataRow row in dt.Rows)
                {
                    inpoutTo2.Items.Add(row[0].ToString());
                }
            }
            else
            {
                int ch2 = Int32.Parse(Request.QueryString.Get("mg"));
                if (ch2 == 0)
                {
                    To.Visible = true;
                    int id = Int32.Parse(Request.QueryString.Get("id"));
                    inputTo.Text = CRUD.DAL.selectNomMg1(id);
                }
                else
                {
                    To.Visible = true;
                    int id = Int32.Parse(Request.QueryString.Get("id"));
                    inputTo.Text = CRUD.DAL.selectNomMg1(id);
                }
            }
            
            




            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            int i = 0;
            string chaine = Request.QueryString.Get("id");
            string ch = Session["id"].ToString();
            int ch2 = Int32.Parse(Request.QueryString.Get("mg"));
            if (Int32.Parse(chaine) == 0)
            {
                int iddestinateur = CRUD.DAL.getidmgcourantn(inpoutTo2.Text);
                CRUD.Message m = new CRUD.Message(Int32.Parse(ch), iddestinateur, 0, inputBody.Text, typetr.Text);
                i = CRUD.DAL.ajoutermessage(m);
            }
            else
            {
                if (ch2 == 0)
                {
                    CRUD.Message m1 = new CRUD.Message(Int32.Parse(ch), Int32.Parse(chaine), 0, inputBody.Text, typetr.Text);
                    i = CRUD.DAL.ajoutermessage(m1);
                }
                else
                {
                    CRUD.Message m1 = new CRUD.Message(Int32.Parse(ch), Int32.Parse(chaine), ch2, inputBody.Text, typetr.Text);
                    i = CRUD.DAL.ajoutermessageRep(m1);
                }
            }

            
            if (i == 1)
            {
                mg.Visible = true;
            }
            else
            {
                err.Visible = true;
            }

        }
    }
}