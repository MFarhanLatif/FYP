using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CustDAccess;
using System.Web.Mvc;

namespace EmployeeService.Controllers
{
    public class CustController : ApiController
    {
        //public IEnumerable<CustRegistration> Get(int id)
        //{


        //    using (s6finalEntities entities = new s6finalEntities())
        //    {
        //  yield return entities.CustRegistrations.FirstOrDefault(e => e.CustId == id);
               
        //    }
        //}
      
        public IEnumerable<CustRegistration> Get()
        {


            using (s6finalEntities entities = new s6finalEntities())
            {
                return entities.CustRegistrations.ToList();
            }
        }
       public HttpResponseMessage Post([FromBody] CustRegistration Register)
        {
            try
            {
                using (s6finalEntities entities = new s6finalEntities())
                {
                    entities.CustRegistrations.Add(Register);
                    entities.SaveChanges();

                    var message = Request.CreateResponse(HttpStatusCode.Created, Register);
                    message.Headers.Location = new Uri(Request.RequestUri + Register.CustId.ToString());
                    return message;
                }
            }
            catch(Exception ex)
            {
            return     Request.CreateErrorResponse(HttpStatusCode.BadRequest, ex);
            }
        }
        public HttpResponseMessage Get(int ID)
        {

            using (s6finalEntities entities = new s6finalEntities())
            {
                var entity = entities.CustRegistrations.FirstOrDefault(e => e.CustId == ID);
                if (entity != null)
                {
                    return Request.CreateResponse(HttpStatusCode.OK, entity);
                }
                else
                {
                  return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Customer not found.");
                }
            }
        }
        public HttpResponseMessage Delete(int id)
        {
            using (s6finalEntities entities = new s6finalEntities())
            {

            var entity=entities.CustRegistrations.Remove(entities.CustRegistrations.FirstOrDefault(e => e.CustId == id));
                if(entity==null)
                {

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Customer does not exist.");

                }
                else
                {
                    entities.CustRegistrations.Remove(entity);
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK,"Customer deleted successfully.");
                }

            }
        }

        public HttpResponseMessage Put(int id,[FromBody]CustRegistration edit)
        {
            using (s6finalEntities entities = new s6finalEntities())
            {
                var entity = entities.CustRegistrations.FirstOrDefault(e => e.CustId == id);
                if (entity == null)
                {
                    

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Customer does not exist.");
                }
                else
                {
                    entity.CustName = edit.CustName;
                    entity.CustCnic = edit.CustCnic;
                    entity.CustEmail = edit.CustEmail;
                    entity.CustPhone = edit.CustPhone;
                    entity.CustPassword = edit.CustPassword;
                    entity.CustAddress = edit.CustAddress;
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Customer Updated successfully.");

                }
            }
        }


    }
}
          