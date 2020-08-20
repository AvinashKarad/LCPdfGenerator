using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using bootstrapTheme.Models;
using Rotativa.MVC;

namespace bootstrapTheme.Controllers
{
    public class StudentController : Controller
    {
        private LeavingCertificatePdfEntities db = new LeavingCertificatePdfEntities();

        //
        // GET: /Student/

        public ActionResult Index()
        {
            return View(db.StudentLCDatas.ToList());
        }

        //
        // GET: /Student/Details/5

        public ActionResult Details(int id = 0)
        {
            StudentLCData studentlcdata = db.StudentLCDatas.Find(id);
            if (studentlcdata == null)
            {
                return HttpNotFound();
            }
            return View(studentlcdata);
        }

        //
        // GET: /Student/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Student/Create

        [HttpPost]
        public ActionResult Create(StudentLCData studentlcdata)
        {
            if (ModelState.IsValid)
            {
                db.StudentLCDatas.Add(studentlcdata);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(studentlcdata);
        }

        //
        // GET: /Student/Edit/5

        public ActionResult Edit(int id = 0)
        {
            StudentLCData studentlcdata = db.StudentLCDatas.Find(id);
            if (studentlcdata == null)
            {
                return HttpNotFound();
            }
            return View(studentlcdata);
        }

        //
        // POST: /Student/Edit/5

        [HttpPost]
        public ActionResult Edit(StudentLCData studentlcdata)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studentlcdata).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(studentlcdata);
        }

        //
        // GET: /Student/Delete/5

        public ActionResult Delete(int id = 0)
        {
            StudentLCData studentlcdata = db.StudentLCDatas.Find(id);
            if (studentlcdata == null)
            {
                return HttpNotFound();
            }
            return View(studentlcdata);
        }

        //
        // POST: /Student/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            StudentLCData studentlcdata = db.StudentLCDatas.Find(id);
            db.StudentLCDatas.Remove(studentlcdata);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult Print(int id)
        {
            var report = new ActionAsPdf("PrintById", new { id = id });
            return report;
        }

        public ActionResult PrintById(int? id = 0)
        {
            StudentLCData studentlcdata = db.StudentLCDatas.Find(id);
            if (studentlcdata == null)
            {
                return HttpNotFound();
            }
            return View(studentlcdata);

            //var student = db.StudentLCDatas.Where(e => e.Id == id).FirstOrDefault();
            //return View(student);
        }
    }
}