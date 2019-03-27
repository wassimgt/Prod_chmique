using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Prod_ch.Models;
using System.Net.Mail;
using System.IO;

namespace Prod_ch
{
    public partial class Resgistre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mg.Visible = false;
            erreur.Visible = false;
            err.Visible = false;
            stt.Visible = false;
            
        }

        protected void btn_click(object sender, EventArgs e)
        { Random rand = new Random();
            String key="";
             for(int i =0; i < 2; i++)
            {
                key = key + rand.Next();
            }
            string url2 = "/confirm.aspx?key=" + key;
            string url = Request.Url.AbsoluteUri.Replace(Request.Url.PathAndQuery, url2);
          
      
            string app = Request.PhysicalApplicationPath;
   
            SqlConnection cn = Connection.getconnection();
            cn.Open();
            if (txtpass.Text.Length > 7)
            {
                string sql = "insert into Magasin values('" + txtcode.Text + "','" + txtnommg.Text + "','" + txtstrut.Text + "','" + txttype.Text + "','" + txtnomres.Text + "','" + txtemail.Text + "','" + txtpass.Text + "',0,'"+key+"')";
                SqlCommand cmd = new SqlCommand(sql, cn);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    try {
                        String meg = " <html> <head> <title> Confirmation </title></head><body><h3>Bienvenue " + txtnomres.Text + "</h3><div align='center'> <img src='https://www.turbopix.fr/i/csbktzjppc.png' width='200'><p>pour verifier votre compte   cliquer <a href='" + url + "'>"+url+"</a> </p> </div></body></html> ";

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
                        client.Credentials = new System.Net.NetworkCredential("familybudgett@gmail.com","13432196");
                        client.Send(message);
                    }
                    catch ( Exception ex)
                    {
                        stt.Visible = true;
                        status.Text =ex.StackTrace ;
                    }



                    mg.Visible = true;
                }
                else
                {

                    erreur.Visible = true;
                }
            }
            else
            {
                err.Visible = true;
            }
        }
    }

}