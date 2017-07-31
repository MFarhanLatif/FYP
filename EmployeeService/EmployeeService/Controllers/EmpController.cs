using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using EmpDAccess;
using System.Security.Claims;
using System.Security.AccessControl;
namespace EmployeeService.Controllers
{
    [Authorize] 
    public class EmpController : ApiController
    {

        [Authorize(Roles = "admin")]
        [HttpGet]
        [Route("api/data/authorize")]

        public IHttpActionResult GetForAdmin()
        {
            var identity = (ClaimsIdentity)User.Identity;
            var roles = identity.Claims
                .Where(c => c.Type == ClaimTypes.Role)
                .Select(c => c.Value);
            return Ok("Hello" + identity.Name + " Role: " + String.Join(",", roles.ToList()));
        }



        [AllowAnonymous]
        public IEnumerable<EmpRegistration> Get()
        {


            using (s6finalEntities1 entities = new s6finalEntities1())
            {
                return entities.EmpRegistrations.ToList();
            }
        }
        public HttpResponseMessage Post([FromBody] EmpRegistration Register)
        {
            try
            {
                using (s6finalEntities1 entities = new s6finalEntities1())
                {
                    entities.EmpRegistrations.Add(Register);
                    entities.SaveChanges();

                    var message = Request.CreateResponse(HttpStatusCode.Created, Register);
                    message.Headers.Location = new Uri(Request.RequestUri + Register.EmpId.ToString());
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

            using (s6finalEntities1 entities = new s6finalEntities1())
            {
                var entity = entities.EmpRegistrations.FirstOrDefault(e => e.EmpId == ID);
                if (entity != null)
                {
                    return Request.CreateResponse(HttpStatusCode.OK, entity);
                }
                else
                {
                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Employee not found.");
                }
            }
        }
        public HttpResponseMessage Delete(int id)
        {
            using (s6finalEntities1 entities = new s6finalEntities1())
            {

                var entity = entities.EmpRegistrations.Remove(entities.EmpRegistrations.FirstOrDefault(e => e.EmpId == id));
                if (entity == null)
                {

                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Employee does not exist.");

                }
                else
                {
                    entities.EmpRegistrations.Remove(entity);
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Employee deleted successfully.");
                }

            }
        }

        public HttpResponseMessage Put(int id, [FromBody]EmpRegistration edit)
        {
            using (s6finalEntities1 entities = new s6finalEntities1())
            {
                var entity = entities.EmpRegistrations.FirstOrDefault(e => e.EmpId == id);
                if (entity == null)
                {


                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, "Employee  not exist.");
                }
                else
                {
                    entity.EmpName = edit.EmpName;
                    entity.EmpCnic = edit.EmpCnic;
                    entity.EmpEmail = edit.EmpEmail;
                    entity.EmpPhone = edit.EmpPhone;
                    entity.EmpPassword = edit.EmpPassword;
                    entity.EmpAddress = edit.EmpAddress;
                    entities.SaveChanges();
                    return Request.CreateResponse(HttpStatusCode.OK, "Employee Updated successfully.");

                }
            }
        }


    }
}
