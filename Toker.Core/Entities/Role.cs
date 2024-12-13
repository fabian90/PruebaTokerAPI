using Commons.Repository.Entities;

namespace Toker.Core.Entities
{
    public class Role : BaseEntity
    {
        
        public string Name { get; set; } = null!;
        public bool IsActive { get; set; }

        
        public virtual ICollection<UserRole> UserRoles { get; set; }
    }
}
