using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class produit
    {
        public DateTime DatePublicationAnnonce { get; set; }
        public string Label { get; set; }
        public string CAS { get; set; }
        public string Unite { get; set; }
        public string Etat { get; set; }



        public produit(string Label, string CAS, string Unite, string Etat)
        {
            this.Label = Label;
            this.CAS = CAS;
            this.Unite = Unite;
            this.Etat = Etat;
        }

    }
}