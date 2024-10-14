namespace BL
{
    public interface IBL<T>
    {
        Task<List<T>> getAll();
        Task<T> getById(int id);
        Task update(int id, T item);
        Task deleteById(int id);
        Task<T> AddItem(T item);
        Task DeleteAll();

        //int getAge(int id);
    }
}