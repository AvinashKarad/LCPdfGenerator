using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using bootstrapTheme.Models;


namespace bootstrapTheme.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/
        private LeavingCertificatePdfEntities db = new LeavingCertificatePdfEntities();

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(User user)
        {
            bool isValid = db.User.Any(x => x.Email == user.Email && x.Password == user.Password);

            if (isValid)
            {
                FormsAuthentication.SetAuthCookie(user.Email, false);
                //ViewBag.LoginName = user.FirstName;
                return RedirectToAction("Index", "Student");
            }
            return View();
        }

        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "User");
        }

        public ActionResult Signup()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Signup(User user)
        {
            if (db.User.Any(x => x.Email == user.Email))
            {
                ModelState.AddModelError("", "User already exists");
                return View("Signup", user);
            }
            else
            {
                db.User.Add(user);
                db.SaveChanges();
                
            }
            ModelState.Clear();
            return RedirectToAction("Login", "User");
        }

    }
}
