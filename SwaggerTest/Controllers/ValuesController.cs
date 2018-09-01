using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace SwaggerTest.Controllers
{
    /// <summary>
    /// ValuesController
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        /// <summary>
        /// 获取列表
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }

        /// <summary>
        /// 根据id编号获取
        /// </summary>
        /// <param name="id">id编号</param>
        /// <returns></returns>
        [HttpGet("{id}")]
        public ActionResult<string> Get(int id)
        {
            return "value";
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="value">值</param>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        /// <summary>
        /// 指定id添加
        /// </summary>
        /// <param name="id">id编号</param>
        /// <param name="value">值</param>
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        /// <summary>
        /// 根据id编号删除
        /// </summary>
        /// <param name="id">id编号</param>
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
