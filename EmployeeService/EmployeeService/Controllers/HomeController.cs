using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CustDAccess;

namespace EmployeeService.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
        /////    ViewBag.Title = "Home Page";

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(CustRegistration objUser)
        {
            if (ModelState.IsValid)
            {
                using (s6finalEntities db =new s6finalEntities())
                {
                    var obj = db.CustRegistrations.Where(a => a.CustEmail.Equals(objUser.CustEmail) && a.CustPassword.Equals(objUser.CustPassword)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["CustId"] = obj.CustId.ToString();
                        Session["CustName"] = obj.CustName.ToString();
                        return RedirectToAction("UserDashBoard");
                    }
                }
            }
            return View(objUser);
        }

        public ActionResult UserDashBoard()
        {
            if (Session["CustId"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
    }
}  


    
