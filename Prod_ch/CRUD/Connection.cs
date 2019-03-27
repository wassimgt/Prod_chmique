using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Prod_ch.CRUD
{
    public class Connection
    {
        public static SqlConnection GetConnection()

        {

            string connetionString =
                          @"Data Source=WASSIM_PC\SQLEXPRESS;Initial Catalog=Produit_Chimique;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
            SqlConnection cnn = new SqlConnection(connetionString);
            return cnn;
        }

    }
}
