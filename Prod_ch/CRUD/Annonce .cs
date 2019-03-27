using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class Annonce
    {
        public DateTime DatePublicationAnnonce { get; set; }
        public int Validite { get; set; }
        public string EtatAnnonce { get; set; }
        public string TypeAnnonce { get; set; }
        public int Quantite { get; set; }
        public DateTime DateExpirationProduit { get; set; }
        public string TypeTransaction { get; set; }
        public string Commentaires { get; set; }

        public Annonce( int Validite, string TypeAnnonce, int Quantite, string TypeTransaction, string Commentaires)
        {
            this.DatePublicationAnnonce = DateTime.Today;
            this.Validite = Validite;
            this.EtatAnnonce="active";
            this.TypeAnnonce = TypeAnnonce;
            this.Quantite= Quantite;
            this.DateExpirationProduit = DateTime.Today.AddDays(Validite);
            this.TypeTransaction = TypeTransaction;
            this.Commentaires = Commentaires;

        }

        public Annonce( int Validite, string EtatAnnonce, string TypeAnnonce, int Quantite,  string TypeTransaction)
        {
            this.DatePublicationAnnonce = DateTime.Today;
            this.Validite = Validite;
            this.EtatAnnonce = EtatAnnonce;
            this.TypeAnnonce = TypeAnnonce;
            this.Quantite = Quantite;
            this.DateExpirationProduit =DateTime.Today.AddDays(Validite);
            this.TypeTransaction = TypeTransaction;
            

        }
    }
}