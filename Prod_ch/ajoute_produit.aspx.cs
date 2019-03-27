using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prod_ch
{
    public partial class ajoute_produit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mg.Visible = false;
            err.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            CRUD.produit p = new CRUD.produit(label.Text, CAS.Text, unity.Text, etat.Text);
            int i=CRUD.DAL.ajouterP(p);
            System.Diagnostics.Debug.WriteLine("wasim ->>>>>>>>>><<<<<<"+i);
            if (i ==1)
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