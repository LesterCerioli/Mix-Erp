using MixErp.Infrastructure.Data;
using MixErp.Infrastructure.Models;

namespace MixErp.Modules.Core.Data
{
    public class Repository<T> : RepositoryWithTypedId<T, long>, IRepository<T>
        where T : class, IEntityWithTypedId<long>
    {
        public Repository(MixErpDbContext context) : base(context)
        {
            
        }
        
    }
}