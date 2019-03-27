namespace Prod_ch.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Produit")]
    public partial class Produit
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Produit()
        {
            Annonce = new HashSet<Annonce>();
        }

        public int id { get; set; }

        [StringLength(255)]
        public string Label { get; set; }

        [StringLength(255)]
        public string CAS { get; set; }

        [StringLength(255)]
        public string Unite { get; set; }

        [StringLength(255)]
        public string Etata { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Annonce> Annonce { get; set; }
    }
}
