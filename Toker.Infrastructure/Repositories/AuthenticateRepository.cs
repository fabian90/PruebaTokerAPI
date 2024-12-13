using Commons.Repository.Repository;
using Toker.Core.Entities;
using Toker.Core.Interfaces.Repositories;
using Toker.Infrastructure.Data;

namespace Toker.Infrastructure.Repositories
{
    public class AuthenticateRepository : GenericRepository<User, IdentityDBContext>, IAuthenticateRepository
    {
        protected readonly IdentityDBContext _context;

        public AuthenticateRepository(IdentityDBContext context) : base(context)
        {
            _context = context;
        }     
    }
}

