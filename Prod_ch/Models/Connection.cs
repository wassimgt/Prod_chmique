using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace Prod_ch.Models
{
    public class Connection
    {
        public static SqlConnection getconnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["Produit_ChimiqueConnectionString"].ToString());
        }

    }
}