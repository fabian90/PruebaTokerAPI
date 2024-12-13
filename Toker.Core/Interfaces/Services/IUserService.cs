using Commons.RequestFilter;
using Commons.Response;
using Toker.Core.DTOs.Request;
using Toker.Core.DTOs.Response;
using Toker.Core.Entities;

namespace Toker.Core.Interfaces.Services
{
    public interface IUserService
    {
        Task<User> GetByUserName(string userName);
        Task<ApiResponse<UserResponseDTO>> Add(UserRequestDTO request);
        Task<ApiResponse<UserResponseDTO>> Update(UserRequestDTO request);
        Task<ApiResponse<object>> Delete(int id);
        Task<RecordsResponse<UserResponseDTO>> Get(QueryFilter filter);
    }
}