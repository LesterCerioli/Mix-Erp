using Microsoft.AspNetCore.Identity;
using MixErp.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Modules.Core.Models
{
    public class User : IdentityUser<long>, IEntityWithTypedId<long>, IExtendableObject

    {
        public User()
        {
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
        }
        
        public const string SettingsDataKey = "Settings";

        public Guid UserGuid { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string FullName { get; set; }

        public long? VendorId { get; set; }

        public bool IsDeleted { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset LatestUpdatedOn { get; set; }

              

        public long? DefaultShippingAddressId { get; set; }

        

        public long? DefaultBillingAddressId { get; set; }

        [StringLength(450)]
        public string RefreshTokenHash { get; set; }

        public IList<UserRole> Roles { get; set; } = new List<UserRole>();

       

        [StringLength(450)]
        public string Culture { get; set; }

        /// <inheritdoc />
        public string ExtensionData { get; set; }

        public long id => throw new NotImplementedException();
    }
}
