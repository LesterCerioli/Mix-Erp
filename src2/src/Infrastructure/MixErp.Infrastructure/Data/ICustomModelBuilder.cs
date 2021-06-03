namespace MixErp.Infrastructure.Data
{
    public interface ICustomModelBuilder
    {
        void Build(ICustomModelBuilder modelBuilder);
         
    }
}