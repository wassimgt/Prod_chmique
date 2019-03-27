using Prod_ch.CRUD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class DAL
    {

        //ajouter produit 
        public static int ajouterP(produit p)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "INSERT INTO Produit(Label,CAS,Unite,Etat)VALUES(@Label,@CAS,@Unite,@Etat)";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("Label", SqlDbType.NVarChar).Value = p.Label;
            cmd.Parameters.Add("CAS", SqlDbType.NVarChar).Value = p.CAS;
            cmd.Parameters.Add("Unite", SqlDbType.NVarChar).Value = p.Unite;
            cmd.Parameters.Add("Etat", SqlDbType.NVarChar).Value = p.Etat;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }
        public static DataTable selectprod()
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT CAS FROM Produit";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }
        public static DataTable getmgcourant(string MagasinCourant)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT * FROM Magasin where Magasin.NomResponsable =@nom";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("nom", SqlDbType.NVarChar).Value = MagasinCourant;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }
        public static int getidmgcourant(string MagasinCourant)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT id FROM Magasin where Magasin.NomResponsable =@nom";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("nom", SqlDbType.NVarChar).Value = MagasinCourant;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        // id produit ajouter 
        public static int getidproduitajouter(string CAS)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT id FROM Produit where Produit.CAS=@CAS";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("CAS", SqlDbType.NVarChar).Value = CAS;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return Int32.Parse(dt.Rows[0][0].ToString());
        }
        // ajouter annonce
        public static int ajouterA(Annonce a, string cas, string MagasinCourant)
        {

            int idmgcourant = getidmgcourant(MagasinCourant);
            int idproduitajouter = getidproduitajouter(cas);
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "INSERT INTO Annonce(DatePublicationAnnonce , Validite, EtatAnnonce, TypeAnnonce, IdAuteur, IdProduit, Quantite, DateExpirationProduit, TypeTransaction, Commentaires,Date_ajout)values(@DatePublicationAnnonce , @Validite, @EtatAnnonce, @TypeAnnonce, @IdAuteur, @IdProduit, @Quantite, @DateExpirationProduit, @TypeTransaction, @Commentaires,getutcdate())";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("DatePublicationAnnonce", SqlDbType.NVarChar).Value = a.DatePublicationAnnonce.ToString("yyyy-MM-dd HH:mm:ss");
            cmd.Parameters.Add("Validite", SqlDbType.Int).Value = a.Validite;
            cmd.Parameters.Add("EtatAnnonce", SqlDbType.NVarChar).Value = a.EtatAnnonce;
            cmd.Parameters.Add("TypeAnnonce", SqlDbType.NVarChar).Value = a.TypeAnnonce;
            cmd.Parameters.Add("IdAuteur", SqlDbType.Int).Value = idmgcourant;
            cmd.Parameters.Add("IdProduit", SqlDbType.Int).Value = idproduitajouter;
            cmd.Parameters.Add("Quantite", SqlDbType.Int).Value = a.Quantite;
            cmd.Parameters.Add("DateExpirationProduit", SqlDbType.NVarChar).Value = a.DateExpirationProduit.ToString("yyyy-MM-dd HH:mm:ss");
            cmd.Parameters.Add("TypeTransaction", SqlDbType.NVarChar).Value = a.TypeTransaction;
            cmd.Parameters.Add("Commentaires", SqlDbType.NVarChar).Value = a.Commentaires;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }


        public static int Convert1(DateTime exp)
        {
            TimeSpan t = (exp - DateTime.Today);
            return Convert.ToInt32(t.TotalDays);
        }
        // selectionner les annonces 
        public static DataTable select()
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT DatePublicationAnnonce, Validite,TypeAnnonce, Nom, Label, CAS, Unite,Quantite,TypeTransaction,Commentaires FROM Annonce,Produit,Magasin where EtatAnnonce='active' ORDER BY DatePublicationAnnonce DESC";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }

        public static DataTable myselect(string MagasinCourant)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT  EtatAnnonce,TypeAnnonce,Quantite,DateExpirationProduit,TypeTransaction,Commentaires,Annonce.id FROM Annonce,Produit,Magasin where Magasin.NomResponsable=@nom and Annonce.IdProduit=Produit.id and Annonce.IdAuteur=Magasin.id  ";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("nom", SqlDbType.VarChar).Value = MagasinCourant;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;
        }
        public static int updateM(int id, Magasin m)
        {


            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "UPDATE Magasin SET  Nom = @Nom, NomResponsable =@EtatAnnonce, EmailResponsable=@TypeAnnonce, PWResponsable=@Quantite, text=@DateExpirationProduit where id=@id";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("@Nom", SqlDbType.NVarChar).Value = m.Nom;
            cmd.Parameters.Add("EtatAnnonce", SqlDbType.NVarChar).Value = m.NomResponsable;
            cmd.Parameters.Add("TypeAnnonce", SqlDbType.NVarChar).Value = m.EmailResponsable;
            cmd.Parameters.Add("Quantite", SqlDbType.NVarChar).Value = m.PWResponsable;
            cmd.Parameters.Add("DateExpirationProduit", SqlDbType.Int).Value = m.text;
            cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }
        public static int gettest(string nom)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT text FROM Magasin where Magasin.NomResponsable =@nom";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("nom", SqlDbType.NVarChar).Value = nom;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public static int ajoutermessage(Message m)
        {

            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "INSERT INTO Message(IdEmetteur, IdDestinataire, DateMessage, Contenu, City)VALUES(@IdEmetteur, @IdDestinataire, @DateMessage, @Contenu, @City)";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("IdEmetteur", SqlDbType.Int).Value = m.IdEmetteur;
            cmd.Parameters.Add("IdDestinataire", SqlDbType.Int).Value = m.IdDestinataire;
            cmd.Parameters.Add("DateMessage", SqlDbType.NVarChar).Value = m.DateMessage.ToString("yyyy-MM-dd HH:mm:ss");
            //cmd.Parameters.Add("IdReplyTo", SqlDbType.Int).Value = m.IdReplyTo;
            cmd.Parameters.Add("Contenu", SqlDbType.NVarChar).Value = m.Contenu;
            cmd.Parameters.Add("City", SqlDbType.NVarChar).Value = m.City;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }

        public static int ajoutermessageRep(Message m)
        {

            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "INSERT INTO Message(IdEmetteur, IdDestinataire, DateMessage, IdReplyTo, Contenu, City)VALUES(@IdEmetteur, @IdDestinataire, @DateMessage, @IdReplyTo, @Contenu, @City)";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("IdEmetteur", SqlDbType.Int).Value = m.IdEmetteur;
            cmd.Parameters.Add("IdDestinataire", SqlDbType.Int).Value = m.IdDestinataire;
            cmd.Parameters.Add("DateMessage", SqlDbType.NVarChar).Value = m.DateMessage.ToString("yyyy-MM-dd HH:mm:ss");
            cmd.Parameters.Add("IdReplyTo", SqlDbType.Int).Value = m.IdReplyTo;
            cmd.Parameters.Add("Contenu", SqlDbType.NVarChar).Value = m.Contenu;
            cmd.Parameters.Add("City", SqlDbType.NVarChar).Value = m.City;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }

        public static DataTable selectNomMg()
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT  Nom FROM Magasin ";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;

        }

        public static string selectNomMg1(int id)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT  Nom FROM Magasin where id=@id ";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt.Rows[0][0].ToString();

        }


        public static int getidmgcourantn(string MagasinCourant)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT id FROM Magasin where Magasin.Nom =@nom";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("nom", SqlDbType.NVarChar).Value = MagasinCourant;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return Int32.Parse(dt.Rows[0][0].ToString());
        }



        public static DataTable selectnot(int id)
        {
            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            string ch = "SELECT id, IdEmetteur, IdDestinataire, DateMessage, Contenu  FROM Message where IdDestinataire=@IdDestinataire and Accept=2 ORDER BY DateMessage DESC";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("IdDestinataire", SqlDbType.Int).Value = id;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cnn.Close();
            return dt;

        }
         public static object date(DateTime dt)
        {



            DateTime value = (DateTime)dt;
            object d;


            TimeSpan timeSince = DateTime.Now - value;
            if (timeSince > TimeSpan.FromDays(1))
            {
                d = value.ToString("M");
            }
            else if (timeSince >= TimeSpan.FromHours(1))
            {
                d = String.Format("{0:%h} hours ago", timeSince);
            }
            else if (timeSince >= TimeSpan.FromMinutes(1))
            {
                d = String.Format("{0:%m} minutes ago", timeSince);
            }
            else
            {
                d = String.Format("{0:%s} seconde ago", timeSince);
            }
            return d;
        }


        public static int UpdateA(int id)
        {

            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "UPDATE Message SET  Accept =1 WHERE id=@id";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }

        public static int UpdateR(int id)
        {

            SqlConnection cnn = Connection.GetConnection();
            cnn.Open();
            String ch = "UPDATE Message SET  Accept =0 WHERE id=@id";
            SqlCommand cmd = new SqlCommand(ch, cnn);
            cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
            int i = cmd.ExecuteNonQuery();
            cnn.Close();
            return i;
        }
    }
}