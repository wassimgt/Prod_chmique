namespace Prod_ch.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Magasin")]
    public partial class Magasin
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Magasin()
        {
            Annonce = new HashSet<Annonce>();
            Message = new HashSet<Message>();
            Message1 = new HashSet<Message>();
        }

        public int id { get; set; }

        [StringLength(255)]
        public string Code { get; set; }

        [StringLength(255)]
        public string Nom { get; set; }

        [StringLength(255)]
        public string Structure { get; set; }

        [StringLength(255)]
        public string TypeStructure { get; set; }

        [StringLength(255)]
        public string NomResponsable { get; set; }

        [StringLength(255)]
        public string EmailResponsable { get; set; }

        [StringLength(255)]
        public string PWResponsable { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Annonce> Annonce { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Message { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Message1 { get; set; }
    }
}
