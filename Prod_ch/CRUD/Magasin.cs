using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class Magasin
    {
        public string Code { get; set; }
        public string Nom { get; set; }
        public string Structure { get; set; }
        public string TypeStructure { get; set; }
        public string NomResponsable { get; set; }
        public string EmailResponsable { get; set; }
        public string PWResponsable { get; set; }
        public int  text { get; set; }
        public Magasin(string Code, string Nom, string Structure, string TypeStructure, string NomResponsable, string EmailResponsable, string PWResponsable)
    {
            this.Code = Code;
            this.Nom = Nom;
            this.Structure = Structure;
            this.TypeStructure = TypeStructure;
            this.NomResponsable = NomResponsable;
            this.EmailResponsable = EmailResponsable;
        
    }
        public Magasin( string Nom,  string NomResponsable, string EmailResponsable, string PWResponsable ,int text)
        {
        
            this.Nom = Nom;
            this.PWResponsable = PWResponsable;
            this.NomResponsable = NomResponsable;
            this.EmailResponsable = EmailResponsable;
            this.text = text;

        }
    }
   
}