using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstNewDatabaseSample
{
    public class BloggingContext : DbContext 
    {
        //Parameterless constructor with hard-coded reference to connection string name
        public BloggingContext() : base("name=MyDb") { }

        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Post> Posts { get; set; }
        public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>()
                .Property(u => u.DisplayName)
                .HasColumnName("display_name");
        }
    }
}
