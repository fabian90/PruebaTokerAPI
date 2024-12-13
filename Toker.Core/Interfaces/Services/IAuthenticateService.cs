
using Toker.Core.DTOs.Response;

namespace Toker.Core.Interfaces.Services
{
    public interface IAuthenticateService
    {
        UserAuthResponseDTO ValidateUser(string username, string password);
    }
}
