﻿using Toker.Core.Entities;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace Toker.Infrastructure.Data
{
    public class IdentityDBContext : DbContext
    {
        public IdentityDBContext(DbContextOptions<IdentityDBContext> options) : base(options)
        {

        }

        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserRole> UserRole { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<Entity> Entity { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfigurationsFromAssembly(Assembly.GetExecutingAssembly());
        }
    }
}
