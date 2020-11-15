using System.Collections.Generic;
using System.Linq;
using AutoMapper;
using glovo_webapi.Entities;
using glovo_webapi.Models.Order;
using glovo_webapi.Services.Orders;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace glovo_webapi.Controllers.Orders
{
    [ApiController]
    [Route("api/users")]
    public class OrdersOfUserController : ControllerBase
    {
        private readonly IOrdersService _service;
        private readonly IMapper _mapper;
        
        public OrdersOfUserController(IOrdersService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }
        
        //GET api/users/<userId>/orders
        [HttpGet("{userId}/orders")]
        public ActionResult<IEnumerable<GetOrderModel>> GetAllOrdersOfUser(int userId)
        {
            IEnumerable<Order> userOrders = _service.GetAllOrdersOfUser(userId);
            if (userOrders == null) { return NotFound(new {message = "user id not found"}); }
            return Ok(_mapper.Map<IEnumerable<GetOrderModel>>(userOrders));
        }
        
        //GET api/users/<userId>/orders/<orderId>
        [HttpGet("{userId}/orders/{orderId}")]
        public ActionResult<GetOrderModel> GetOrderOfUserById(int userId, int orderId)
        {
            Order foundOrder = _service.GetOrderOfRestaurantById(userId, orderId);
            if (foundOrder == null) { return NotFound(new {message = "user id or order id not found"}); }
            return Ok(_mapper.Map<GetOrderModel>(foundOrder));            
        }
    }
}