namespace Prod_ch.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Annonce")]
    public partial class Annonce
    {
        public int id { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DatePublicationAnnonce { get; set; }

        public int? Validite { get; set; }

        [StringLength(255)]
        public string EtatAnnonce { get; set; }

        [StringLength(255)]
        public string TypeAnnonce { get; set; }

        public int? IdAuteur { get; set; }

        public int? IdProduit { get; set; }

        public int? Quantite { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateExpirationProduit { get; set; }

        [StringLength(255)]
        public string TypeTransaction { get; set; }

        [StringLength(255)]
        public string Commentaires { get; set; }

        public virtual Magasin Magasin { get; set; }

        public virtual Produit Produit { get; set; }
    }
}
