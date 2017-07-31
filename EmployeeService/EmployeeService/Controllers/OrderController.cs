using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using OrderDAccess;

namespace EmployeeService.Controllers
{
    public class OrderController : ApiController
    {



        public IEnumerable<Order> Get()
        {


            using (s6finalEntities3 entities = new s6finalEntities3())
            {
                return entities.Orders.ToList();
            }
        }
        public HttpResponseMessage Post([FromBody] Order Register)
        {
            try
            {
                using (s6finalEntities3 entities = new s6finalEntities3())
                {
                    entities.Orders.Add(Register);
                    entities.SaveChanges();

                    var message = Request.CreateResponse(HttpStatusCode.Created, Register);
                    message.Headers.Location = new Uri(Request.RequestUri + Register.FoId.ToString());
                    return message;
                }
            }
            catch (Exception ex)
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }
        }
        public HttpResponseMessage Get(int ID)
        {

            using (s6finalEntities3 entities = new s6finalEntities3())
            {
                var entity = entities.Orders.FirstOrDefault(e => e.OrderId == ID);
                if (entity != null)
                {
                    return Request.CreateResponse(HttpStatusCode.OK, entity);
                }
                else
                {
                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise not found.");
                }
            }
        }
        public HttpResponseMessage Delete(int id)
        {
            using (s6finalEntities3 entities = new s6finalEntities3())
            {

                var entity = entities.Orders.Remove(entities.Orders.FirstOrDefault(e => e.FoId == id));
                if (entity == null)
                {

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise does not exist.");

                }
                else
                {
                    entities.Orders.Remove(entity);
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise deleted successfully.");
                }

            }
        }

        public HttpResponseMessage Put(int id, [FromBody]Order edit)
        {
            using (s6finalEntities3 entities = new s6finalEntities3())
            {
                var entity = entities.Orders.FirstOrDefault(e => e.OrderId == id);
                if (entity == null)
                {


                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise not exist.");
                }
                else
                {
                    entity.VehicleType = edit.VehicleType;
                    entity.VehicleNumber = edit.VehicleNumber;
                    entity.ServiceType = edit.ServiceType;
                    entity.Latitude = edit.Latitude;
                    entity.Longitude = edit.Longitude;
                    entity.Discreption = edit.Discreption;
                    entity.CustId = entity.CustId;
                    entity.FoId = entity.FoId;
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise Updated successfully.");
                }
            }
        }
    }

}
