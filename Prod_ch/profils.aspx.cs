using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prod_ch
{
    public partial class profils : System.Web.UI.Page
    {
        DataTable dt; string s;
        int id; string mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            mg.Visible = false;
            err.Visible = false;
            err2.Visible = false;
            string nom = (string)Session["username"];
           id=(int) Session["id"];
            dt = CRUD.DAL.getmgcourant(nom);
            
            foreach (DataRow t in dt.Rows)
            {
                txtnommg.Text = t["Nom"].ToString();
                txtnomre.Text = t["NomResponsable"].ToString();
                mail= t["EmailResponsable"].ToString(); 
                txtemail.Text = t["EmailResponsable"].ToString();
                s = t["PWResponsable"].ToString();
            }
        }

        protected void bt_Click(object sender, EventArgs e)
        {
           if(s!=txtpassword.Text)
            {
                err.Visible = true;
            }
            else
            { if (txtnommg.Text != "" && txtnomre.Text != "" && txtpassn.Text != "" && txtpassword.Text != "" && txtemail.Text != "")
                {
                    if (mail == txtemail.Text)
                    {
                        CRUD.Magasin m = new CRUD.Magasin(txtnommg.Text, txtnomre.Text, txtemail.Text, txtpassn.Text, 1);
                        int x = CRUD.DAL.updateM(id, m);
                        Session["username"] = txtnomre.Text;
                        mg.Visible = true;

                    }
                    else
                    {
                        CRUD.Magasin m = new CRUD.Magasin(txtnommg.Text, txtnomre.Text, txtemail.Text, txtpassn.Text, 1);
                        int x = CRUD.DAL.updateM(id, m);
                        Session["username"] = txtnomre.Text;
                        try
                        {
                            String meg = " <html> body><h3>Bienvenue " + txtnomre.Text + "</h3><div align='center'> <img src='https://www.turbopix.fr/i/csbktzjppc.png' width='200'><p>votre information a éte modifier avec succée </p> </div></body></html> ";

                            MailMessage message = new MailMessage();

                            message.To.Add(new MailAddress(txtemail.Text));
                            message.From = new MailAddress("familybudgett@gmail.com");
                            message.Subject = "activation du compte";
                            message.IsBodyHtml = true;
                            message.Body = meg;



                            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                            client.EnableSsl = true;
                            client.DeliveryMethod = SmtpDeliveryMethod.Network;
                            client.UseDefaultCredentials = false;
                            client.Credentials = new System.Net.NetworkCredential("familybudgett@gmail.com", "13432196");
                            client.Send(message);
                        }
                        catch (Exception ex)
                        {


                        }
                        mg.Visible = true;
                    }
                }
                else
                {
                    err2.Visible = true;
                }

            }
            
        }
    }
}