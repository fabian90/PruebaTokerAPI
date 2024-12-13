using AutoMapper;
using Toker.Core.DTOs.Request;
using Toker.Core.DTOs.Response;
using Toker.Core.Entities;

namespace Toker.Infrastructure.Interfaces
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            #region User
            CreateMap<User, UserRequestDTO>();
            CreateMap<User, UserResponseDTO>();
            CreateMap<UserRequestDTO, User>();
            CreateMap<UserResponseDTO, User>();
            #endregion
            #region Employee
            CreateMap<Employee, EmployeeResponseDTO>()
            .ForMember(dest => dest.EntityName, opt => opt.MapFrom(src => src.Entity.Name)); // Asumiendo que Entity es una propiedad de navegació
            CreateMap<EmployeeRequestDTOUpdate, Employee>();
            CreateMap<EmployeeRequestDTOCreate, Employee>();
            CreateMap<EmployeeResponseDTO, Employee>();
            #endregion
            #region Entity
            CreateMap<Entity, EntityRequestDTOCreate>();
            CreateMap<Entity, EntityResponseDTO>();
            CreateMap<EntityRequestDTOCreate, Entity>();
            CreateMap<EntityRequestDTOUpdate, Entity>();
            CreateMap<EntityResponseDTO, Entity>();
            #endregion
        }
    }
}
