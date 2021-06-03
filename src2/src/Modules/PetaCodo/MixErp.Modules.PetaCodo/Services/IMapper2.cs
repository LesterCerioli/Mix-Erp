using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Modules.PetaCodo.Services
{
    public interface IMapper2 : IMapper
    {
        Func<object, object> GetFromDbConverter(Type DestType, Type SourceType);
    }
}
