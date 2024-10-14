using OrderDal;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ProductBL:IBL<Product>
    {
        private readonly IDal<Product> bookDal;
        public ProductBL(IDal<Product> bookDal)
        {
            this.bookDal = bookDal;
        }
        public async Task<Product> AddItem(Product book)
        {
            return await bookDal.AddItem(book);
        }

        public async Task deleteById(int id)
        {
            await bookDal.RemoveItem(id);
        }

        //public int getAge(int id)
        //{

        //    return DateTime.Now.Year - bookDal.getById(id).YearPublish;
        //}

        public async Task<List<Product>> getAll()
        {

            List<Product> books = await bookDal.getAll();
            
            return books;

        }

        public async Task<Product> getById(int id)
        {
            return await bookDal.getById(id);
        }

        public async Task update(int id, Product book)
        {
            await bookDal.UpdateItem(id,book);
        }
        public async Task DeleteAll()
        {
            await bookDal.DeleteAll();
        }
    }
}
