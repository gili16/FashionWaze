using Microsoft.EntityFrameworkCore;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrderDal
{
    public class ProductDal:IDal<Product>
    {
        //הזרקת תלות
        private readonly IContext context;
        public ProductDal(IContext context)
        {
            this.context = context;
        }

        public async Task<Product> AddItem(Product book)
        {
            await context.Products.AddAsync(book);
            context.Save();
            return book;
        }

        public async Task<Product> getById(int id)
        {
            return await context.Products.FirstOrDefaultAsync(x => x.Id == id);
        }

        public async Task<List<Product>> getAll()
        {
            return await context.Products.ToListAsync();
        }

        public async Task RemoveItem(int id)
        {
            context.Products.Remove(await getById(id));
            context.Save();

        }

        public async Task UpdateItem(int id, Product book)
        {
            Product b = await getById(id);
            b.PictureSrc = book.PictureSrc;
            b.PictureName= book.PictureName;
            b.StoreName = book.StoreName;
            context.Products.Update(b);
            context.Save();

        }
        public async Task DeleteAll()
        {
            List<int> ids=(await getAll()).Select(x=>x.Id).ToList();
            foreach (int id in ids)
            {
                await RemoveItem(id);
            }
        }
    }
}
