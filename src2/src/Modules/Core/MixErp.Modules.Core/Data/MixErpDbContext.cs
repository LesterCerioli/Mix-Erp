using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using MixErp.Modules.Core.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;

namespace MixErp.Modules.Core.Data
{
    public class MixErpDbContext : IdentityDbContext<User, Role, long, IdentityUserClaim<long>, UserRole, IdentityUserLogin<long>, IdentityRoleClaim<long>, IdentityUserToken<long>>
    {
        public MixErpDbContext(DbContextOptions options)
        {

        }
        //PendingIEntityWithTypedId<long>
        public override int SaveChanges(bool acceptAllChangesOnSuccess)
        {
            ValidateEntities();
            return base.SaveChanges(acceptAllChangesOnSuccess);
        }

        private void ValidateEntities()
        {
            throw new NotImplementedException();
        }

        public override Task<int> SaveChangesAsync(bool acceptAllChangesOnSuccess, CancellationToken cancellationToken = default(CancellationToken))
        {
            ValidateEntites();
            return base.SaveChangesAsync(acceptAllChangesOnSuccess, cancellationToken);
        }

        private void ValidateEntites()
        {
            throw new NotImplementedException();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            List<Type> typeToRegisters = new List<Type>();
            foreach (var mdoule in GlobalConfiguration.Modules)
            {
                typeToRegisters.AddRange(Module.Assembly.DefinedTypes.Select(t => t.AsType()));
            }

            RegisterEntities(modelBuilder, typeToRegisters);
            RegisterConvertion(modelBuilder);
            base.OnModelCreating(modelBuilder);
            RegisterCustomMappings(modelBuilder, typeToRegisters);

            if (Database.ProviderName == "Microsoft.EntityFrameworkCore.Sqlite")
            {
                foreach ( var entityType in modelBuilder.Model.GetEntityType())
                {
                    var properties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(DateTimeOffset) || p.PropertyType == typeof(DateTimeOffset?));
                    foreach (var property in properties)
                    {
                        modelBuilder
                            .Entity(entityType.Name)
                            .Property(property.Name)
                            .HasConversion(new DateTimeOffsetToBinaryConverter());
                    }

                    var decimalProperties = entityType.ClrType.GetProperties().Where(p => p.PropertyType == typeof(decimal) || p.PropertyType == typeof(decimal?));
                    foreach (var property in decimalProperties)
                    {
                        modelBuilder
                            .Entity(entityType.Name)
                            .Property(property.Name)
                            .HasConversion<double>();
                    }
                }
            }

        }

        private void RegisterCustomMappings(ModelBuilder modelBuilder, List<Type> typeToRegisters)
        {
            throw new NotImplementedException();
        }

        private void RegisterConvertion(ModelBuilder modelBuilder)
        {
            throw new NotImplementedException();
        }

        private void RegisterEntities(ModelBuilder modelBuilder, List<Type> typeToRegisters)
        {
            throw new NotImplementedException();
        }

        //public static implicit operator DbContext(MixErpDbContext v)
        //{
            //throw new NotImplementedException();
        //}
    }
}