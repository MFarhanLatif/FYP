using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AdmenStoreDAccess;

namespace EmployeeService.Controllers
{
    public class AdmenStoreController : ApiController
    {


        public IEnumerable<AdmenStore> Get()
        {


            using (s6finalEntities5 entities = new s6finalEntities5())
            {
                return entities.AdmenStores.ToList();
            }
        }
        public HttpResponseMessage Post([FromBody] AdmenStore Register)
        {
            try
            {
                using (s6finalEntities5 entities = new s6finalEntities5())
                {
                    entities.AdmenStores.Add(Register);
                    entities.SaveChanges();

                    var message = Request.CreateResponse(HttpStatusCode.Created, Register);
                    message.Headers.Location = new Uri(Request.RequestUri + Register.PId.ToString());
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

            using (s6finalEntities5 entities = new s6finalEntities5())
            {
                var entity = entities.AdmenStores.FirstOrDefault(e => e.PId == ID);
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
            using (s6finalEntities5 entities = new s6finalEntities5())
            {

                var entity = entities.AdmenStores.Remove(entities.AdmenStores.FirstOrDefault(e => e.PId == id));
                if (entity == null)
                {

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise does not exist.");

                }
                else
                {
                    entities.AdmenStores.Remove(entity);
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise deleted successfully.");
                }

            }
        }

        public HttpResponseMessage Put(int id, [FromBody]AdmenStore edit)
        {
            using (s6finalEntities5 entities = new s6finalEntities5())
            {
                var entity = entities.AdmenStores.FirstOrDefault(e => e.PId == id);
                if (entity == null)
                {


                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise not exist.");
                }
                else
                {
                    entity.PName = edit.PName;
                    entity.PType= edit.PType;
                    entity.PQuantity = edit.PQuantity;
                    entity.PCost = edit.PCost;
                    entity.PPrice= edit.PPrice;
                   
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise Updated successfully.");

                }
            }
        }

    }
}
