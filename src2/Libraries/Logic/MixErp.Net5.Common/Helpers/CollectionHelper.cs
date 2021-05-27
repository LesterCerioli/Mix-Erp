using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Net5.Common.Helpers
{
    public static class CollectionHelper
    {
        public static Collection<T> ToCollection<T>(this List<T> items)
        {
            if (items == null)
            {
                return null;
            }


            Collection<T> Collection = new Collection<T>();

            foreach (T t in items)
            {
                Collection.Add(t);
            }

            return Collection;
        }
            
            
            
            
            
            
    }


    
    
}
