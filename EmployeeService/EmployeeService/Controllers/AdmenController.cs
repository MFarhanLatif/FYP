using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AdmenDAccess;

namespace EmployeeService.Controllers
{
    public class AdmenController : ApiController
    {


        public IEnumerable<AdmenRegistration> Get()
        {


            using (s6finalEntities4 entities = new s6finalEntities4())
            {
                return entities.AdmenRegistrations.ToList();
            }
        }
        public HttpResponseMessage Post([FromBody] AdmenRegistration Register)
        {
            try
            {
                using (s6finalEntities4 entities = new s6finalEntities4())
                {
                    entities.AdmenRegistrations.Add(Register);
                    entities.SaveChanges();

                    var message = Request.CreateResponse(HttpStatusCode.Created, Register);
                    message.Headers.Location = new Uri(Request.RequestUri + Register.AdId.ToString());
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

            using (s6finalEntities4 entities = new s6finalEntities4())
            {
                var entity = entities.AdmenRegistrations.FirstOrDefault(e => e.AdId == ID);
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
            using (s6finalEntities4 entities = new s6finalEntities4())
            {

                var entity = entities.AdmenRegistrations.Remove(entities.AdmenRegistrations.FirstOrDefault(e => e.AdId == id));
                if (entity == null)
                {

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise does not exist.");

                }
                else
                {
                    entities.AdmenRegistrations.Remove(entity);
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise deleted successfully.");
                }

            }
        }

        public HttpResponseMessage Put(int id, [FromBody]AdmenRegistration edit)
        {
            using (s6finalEntities4 entities = new s6finalEntities4())
            {
                var entity = entities.AdmenRegistrations.FirstOrDefault(e => e.AdId == id);
                if (entity == null)
                {


                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise not exist.");
                }
                else
                {
                    entity.AdName = edit.AdName;
                    entity.AdCnic = edit.AdCnic;
                    entity.AdEmail = edit.AdEmail;
                    entity.AdPhone = edit.AdPhone;
                    entity.AdPassword = edit.AdPassword;
                    entity.AdAddress = edit.AdAddress;
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Frenchise Updated successfully.");

                }
            }
        }


    }
}
