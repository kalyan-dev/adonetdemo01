using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace adonetdemo01
{
    public class DBConfig
    {
        public static string ConnectionString { get
            {
                return WebConfigurationManager.ConnectionStrings["rccltestCon"].ConnectionString;
            } }
    }
}