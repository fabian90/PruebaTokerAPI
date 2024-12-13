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
    public interface IEmployeeService
    {
        Task<Employee> GetById(int id);
        Task<ApiResponse<EmployeeResponseDTO>> Add(EmployeeRequestDTOCreate request);
        Task<ApiResponse<EmployeeResponseDTO>> Update(EmployeeRequestDTOUpdate request);
        Task<ApiResponse<object>> Delete(int id);
        Task<RecordsResponse<EmployeeResponseDTO>> Get(QueryFilter filter);
    }
}
