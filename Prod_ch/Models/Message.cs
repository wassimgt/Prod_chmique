namespace Prod_ch.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Message")]
    public partial class Message
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Message()
        {
            Message1 = new HashSet<Message>();
        }

        public int id { get; set; }

        public int? IdEmetteur { get; set; }

        public int? IdDestinataire { get; set; }

        [Column(TypeName = "date")]
        public DateTime? DateMessage { get; set; }

        public int? IdReplyTo { get; set; }

        [StringLength(255)]
        public string Contenu { get; set; }

        [StringLength(255)]
        public string City { get; set; }

        public virtual Magasin Magasin { get; set; }

        public virtual Magasin Magasin1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Message1 { get; set; }

        public virtual Message Message2 { get; set; }
    }
}
