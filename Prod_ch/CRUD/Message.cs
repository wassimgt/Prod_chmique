using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class Message
    {

        public int IdEmetteur { get; set; }

        public int IdDestinataire { get; set; }

        public DateTime DateMessage { get; set; }

        public int IdReplyTo { get; set; }

        public string Contenu { get; set; }

        public string City { get; set; }

        public int Accept { get; set; }

        public Message(int IdEmetteur, int IdDestinataire, int IdReplyTo, string Contenu, string City)
        {
            this.IdEmetteur = IdEmetteur;
            this.IdDestinataire = IdDestinataire;
            this.DateMessage = DateTime.Today;
            this.IdReplyTo = IdReplyTo;
            this.Contenu = Contenu;
            this.City = City;
            this.Accept = 2;
        }

        public Message(int IdEmetteur, int IdDestinataire, int IdReplyTo, string Contenu, string City, int Accept)
        {
            this.IdEmetteur = IdEmetteur;
            this.IdDestinataire = IdDestinataire;
            this.DateMessage = DateTime.Today;
            this.IdReplyTo = IdReplyTo;
            this.Contenu = Contenu;
            this.City = City;
            this.Accept = Accept;
        }
    }
}