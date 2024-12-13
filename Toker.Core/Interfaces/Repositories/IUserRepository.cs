using Commons.Repository.Interfaces;
using Commons.RequestFilter;
using Commons.Response;
using Toker.Core.DTOs.Response;
using Toker.Core.Entities;

namespace Toker.Core.Interfaces.Repositories
{
    public interface IUserRepository : IGenericRepository<User>
    {
        public Task<User> GetByUserName(string userName);
        Task<RecordsResponse<UserResponseDTO>> Get(QueryFilter filter);

    }
}
