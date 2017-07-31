using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FrenchiseDAccess;

namespace EmployeeService.Controllers
{
    public class FrenchiseController : ApiController
    {

        

            public IEnumerable<FrenchiseRegistration> Get()
            {


                using (s6finalEntities2 entities = new s6finalEntities2())
                {
                    return entities.FrenchiseRegistrations.ToList();
                }
            }
            public HttpResponseMessage Post([FromBody] FrenchiseRegistration Register)
            {
                try
                {
                    using (s6finalEntities2 entities = new s6finalEntities2())
                    {
                        entities.FrenchiseRegistrations.Add(Register);
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

                using (s6finalEntities2 entities = new s6finalEntities2())
                {
                    var entity = entities.FrenchiseRegistrations.FirstOrDefault(e => e.FoId == ID);
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
                using (s6finalEntities2 entities = new s6finalEntities2())
                {

                    var entity = entities.FrenchiseRegistrations.Remove(entities.FrenchiseRegistrations.FirstOrDefault(e => e.FoId == id));
                    if (entity == null)
                    {

                        return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise does not exist.");

                    }
                    else
                    {
                        entities.FrenchiseRegistrations.Remove(entity);
                        entities.SaveChanges();
                        return Request.CreateResponse(HttpStatusCode.OK, "Frenchise deleted successfully.");
                    }

                }
            }

            public HttpResponseMessage Put(int id, [FromBody]FrenchiseRegistration edit)
            {
                using (s6finalEntities2 entities = new s6finalEntities2())
                {
                    var entity = entities.FrenchiseRegistrations.FirstOrDefault(e => e.FoId == id);
                    if (entity == null)
                    {


                        return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Frenchise not exist.");
                    }
                    else
                    {
                        entity.FoName = edit.FoName;
                        entity.FoCnic = edit.FoCnic;
                        entity.FoEmail = edit.FoEmail;
                        entity.FoPhone = edit.FoPhone;
                        entity.FoPassword = edit.FoPassword;
                        entity.FoAddress = edit.FoAddress;
                        entities.SaveChanges();
                        return Request.CreateResponse(HttpStatusCode.OK, "Frenchise Updated successfully.");

                    }
                }
            }
        
    }

        
}
