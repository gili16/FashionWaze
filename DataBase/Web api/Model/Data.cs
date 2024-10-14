using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Data : DbContext,IContext
    {
        
        public DbSet<Product> Products { get; set ; }
        
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"server=(localdb)\MSSQLLocalDB;database=Python_Project_v4; trusted_connection=true");
        }
       public void Save()
        {
            SaveChanges();
        }
    }
}
