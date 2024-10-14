using BL;
using Microsoft.AspNetCore.Mvc;
using Model;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Web_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IBL<Product> productBL;
        public ProductController(IBL<Product> productBL)
        {
            this.productBL = productBL;
        }
        // GET: api/<Product_Controller>
        [HttpGet]
        public async Task<List<Product>> Get()
        {
            return await productBL.getAll();
        }

        // GET api/<Product_Controller>/5
        [HttpGet("{id}")]
        public async Task< Product> Get(int id)
        {
            return await productBL.getById(id);
        }

        // GET api/<Product_Controller>/5
        [HttpGet("{pictureName}/{storeName}")]
        public async Task<Product> GetByName(string pictureName, string storeName)
        {
            return (await productBL.getAll()).FirstOrDefault(x => x.PictureName == pictureName && x.StoreName == storeName);
        }

        // POST api/<Product_Controller>
        [HttpPost]
        public async Task<Product> Post([FromBody] Product value)
        {
            
            return await productBL.AddItem(value);
        }

        // PUT api/<Product_Controller>/5
        [HttpPut("{id}")]
        public async Task Put(int id, [FromBody] Product value)
        {
           await productBL.update(id, value);
        }

        // DELETE api/<Product_Controller>/5
        [HttpDelete("{id}")]
        public async Task Delete(int id)
        {
            await productBL.deleteById(id);
        }
        [HttpDelete("/all")]
        public async Task DeleteAll()
        {
            await productBL.DeleteAll();
        }
    }
}
