using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prod_ch
{
    public partial class Notification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string chaine1 = Request.QueryString.Get("id");
            int id = Int32.Parse(chaine1);
            string chaine2 = Request.QueryString.Get("tx");
            string chaine3 = Request.QueryString.Get("idem");
            int idem = Int32.Parse(chaine3);
            int idcr =Int32.Parse( Session["id"].ToString());
            if (chaine2 == "0")
            {
                
                CRUD.DAL.UpdateA(id);



                CRUD.Message m1 = new CRUD.Message(idem, idcr,id ,"votre demande a été accepte ", "Acceptation ");
                CRUD.DAL.ajoutermessageRep(m1);
                Response.Redirect("Home.aspx");


            }
            else
            {
                CRUD.DAL.UpdateR(id);
                CRUD.Message m1 = new CRUD.Message(idem, idcr, id, "votre demande a été refusé ", "Refuse ");
                CRUD.DAL.ajoutermessageRep(m1);
                Response.Redirect("Home.aspx");

            }

        }
    }
}