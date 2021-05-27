using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Net5.Common.Helpers
{
    public static class  catalogHelper
    {
        public static void ValidateCatalog(string catalog)
        {
            if (string.IsNullOrWhiteSpace(catalog))
            {
                return;
            }

            string catalogs = ConfigurationHelper.GetDbServerParameter("catalogs");
            string meta = ConfigurationHelper.GetDbServerParameter("MetaDatabase");

            List<string> = catalogs.Split(",").Select
                
            


          
            
               
                
                
                
           
        }
    }
    
    
}
