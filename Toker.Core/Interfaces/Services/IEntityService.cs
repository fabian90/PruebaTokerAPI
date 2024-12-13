using Commons.RequestFilter;
using Commons.Response;
using Toker.Core.DTOs.Request;
using Toker.Core.DTOs.Response;
using Toker.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Toker.Core.Interfaces.Services
{
    public interface IEntityService
    {
        Task<Entity> GetById(int id);
        Task<ApiResponse<EntityResponseDTO>> Add(EntityRequestDTOCreate request);
        Task<ApiResponse<EntityResponseDTO>> Update(EntityRequestDTOUpdate request);
        Task<ApiResponse<object>> Delete(int id);
        Task<RecordsResponse<EntityResponseDTO>> Get(QueryFilter filter);
    }
}
