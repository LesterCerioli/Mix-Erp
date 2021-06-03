using MixErp.Modules.PetaCodo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Modules.PetaCodo.Services
{
    public interface IMapper
    {
        void GetTableInfo(Type t, TableInfo ti);
        bool MpPropertyToColumm(PropertyInfo pi, ref string colummName, ref bool resultColumm);
        Func<object, object> GetFromConverter(PropertyInfo pi, Type SourceType);
        Func<object, object> GetToDbConverter(Type SourceType);
    }
}
