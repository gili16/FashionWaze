using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrderDal
{
    public interface IDal<T>
    {
        public Task<List<T>> getAll();
        public Task<T> getById(int id);
        public Task<T> AddItem(T item);
        public Task RemoveItem(int id);
        public Task UpdateItem(int id, T item);
        public Task DeleteAll();
    }
}
