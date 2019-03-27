namespace Prod_ch.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

       
        public virtual DbSet<Annonce> Annonce { get; set; }

        public virtual DbSet<Magasin> Magasin { get; set; }
        public virtual DbSet<Message> Message { get; set; }
        public virtual DbSet<Produit> Produit { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Annonce>()
                .Property(e => e.EtatAnnonce)
                .IsUnicode(false);

            modelBuilder.Entity<Annonce>()
                .Property(e => e.TypeAnnonce)
                .IsUnicode(false);

            modelBuilder.Entity<Annonce>()
                .Property(e => e.TypeTransaction)
                .IsUnicode(false);

            modelBuilder.Entity<Annonce>()
                .Property(e => e.Commentaires)
                .IsUnicode(false);

          


            modelBuilder.Entity<Magasin>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.Nom)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.Structure)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.TypeStructure)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.NomResponsable)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.EmailResponsable)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .Property(e => e.PWResponsable)
                .IsUnicode(false);

            modelBuilder.Entity<Magasin>()
                .HasMany(e => e.Annonce)
                .WithOptional(e => e.Magasin)
                .HasForeignKey(e => e.IdAuteur);

            modelBuilder.Entity<Magasin>()
                .HasMany(e => e.Message)
                .WithOptional(e => e.Magasin)
                .HasForeignKey(e => e.IdEmetteur);

            modelBuilder.Entity<Magasin>()
                .HasMany(e => e.Message1)
                .WithOptional(e => e.Magasin1)
                .HasForeignKey(e => e.IdDestinataire);

            modelBuilder.Entity<Message>()
                .Property(e => e.Contenu)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<Message>()
                .HasMany(e => e.Message1)
                .WithOptional(e => e.Message2)
                .HasForeignKey(e => e.IdReplyTo);

            modelBuilder.Entity<Produit>()
                .Property(e => e.Label)
                .IsUnicode(false);

            modelBuilder.Entity<Produit>()
                .Property(e => e.CAS)
                .IsUnicode(false);

            modelBuilder.Entity<Produit>()
                .Property(e => e.Unite)
                .IsUnicode(false);

            modelBuilder.Entity<Produit>()
                .Property(e => e.Etata)
                .IsUnicode(false);

            modelBuilder.Entity<Produit>()
                .HasMany(e => e.Annonce)
                .WithOptional(e => e.Produit)
                .HasForeignKey(e => e.IdProduit);
        }
    }
}
