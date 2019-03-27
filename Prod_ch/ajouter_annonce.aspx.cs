using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prod_ch.CRUD;
namespace Prod_ch
{
    public partial class ajouter_annonce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mg.Visible = false;
            err.Visible = false;
            typetr.Visible = false;
            typetr2.Visible = false;
            DataTable tb = CRUD.DAL.selectprod();
            foreach (DataRow t in tb.Rows)
            {
                Nom_p.Items.Add(t[0].ToString());

            }
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Login.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string userr = Session["username"].ToString();
  
            int v = CRUD.DAL.Convert1(DateTime.Parse(datet.Text));
            CRUD.Annonce an = new CRUD.Annonce(v,typeannonce.Text,Int32.Parse( quantite.Text),typetr.Text,com.Text);
            int i = CRUD.DAL.ajouterA(an, Nom_p.Text, userr);
            if (i == 1)
            {
                mg.Visible = true;
            }
            else
            {
                err.Visible = true;
            }
           

        }

        protected void typeannonce_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (typeannonce.Text == "Offre")
            {
                typetr.Visible = true;
            }
            else if (typeannonce.Text == "Demande")
            {
                typetr2.Visible = true;
            }
            else
            {
                typetr.Visible = false;
                typetr2.Visible = false;
            }
           
        }
    }
}