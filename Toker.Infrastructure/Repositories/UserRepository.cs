﻿using Commons.Mapping;
using Commons.Paging;
using Commons.Repository.Repository;
using Commons.RequestFilter;
using Commons.Response;
using Toker.Core.DTOs.Response;
using Toker.Core.Entities;
using Toker.Core.Interfaces.Repositories;
using Toker.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace Toker.Infrastructure.Repositories
{
    public class UserRepository : GenericRepository<User, IdentityDBContext>, IUserRepository
    {
        protected readonly IdentityDBContext _context;

        public UserRepository(IdentityDBContext context) : base(context) 
        {
            _context = context;
        }

        public async Task<User> GetByUserName(string userName)
        {
            return await _context.Users.FirstOrDefaultAsync(u => u.UserName == userName && u.IsActive == true);
        }

        public async Task<RecordsResponse<UserResponseDTO>> Get(QueryFilter filter)
        {
            var response = await _context.Users.OrderBy(x => x.Id).Where(u => u.IsActive == true).GetPagedAsync(filter.Page, filter.Take);
            return response.MapTo<RecordsResponse<UserResponseDTO>>()!;
        }
    }
}
