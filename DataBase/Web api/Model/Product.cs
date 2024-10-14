using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Product
    {
        public int Id { get; set; }
        public string PictureName { get; set; }
        public string PictureSrc { get; set; }
        public string StoreName { get; set; }
        //public virtual ICollection<Order> Orders { get; set; }
    }
}
