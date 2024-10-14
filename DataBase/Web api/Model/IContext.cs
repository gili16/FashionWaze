using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public interface IContext
    {
       
        public DbSet<Product> Products { get; set; }
        
        public void Save();
    }
}
