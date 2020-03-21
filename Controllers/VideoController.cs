using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCPlantilla.Utilerias;
namespace MvcPlantilla.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/


        //Muestra Interfaz
        public ActionResult Create()
        {
            return View();
        }
        //Procesa datos
        [HttpPost]
        public ActionResult Create(int idVideo, string titulo, int repro, string url)
        {
            //Guardar en la base de datos 
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("insert into video values (@idVideo, @titulo,@repro,@url)",
            CommandType.Text,
            parametros);
            RedirectToAction("Index", "Video");
            return View();
        }
        public ActionResult Delete()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            //Borrar en la base de datos 
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            BaseHelper.ejecutarSentencia("delete from video where idVideo=@idVideo;",
            CommandType.Text,
            parametros);
            RedirectToAction("Index", "Home");
            return View();
        }
        public ActionResult Edit()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Edit(int idVideo, string titulo, int repro, string url)
        {
            //Editar en la base de datos 
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("UPDATE video SET video.idVideo = @idVideo, video.titulo= @titulo, video.repro = @repro, video.url= @url WHERE idVideo = @idVideo",
            CommandType.Text,
            parametros);
            RedirectToAction("Index", "Home");
            return View();
        }
        public ActionResult Query()
        {
            ViewData["DataVideo"] = BaseHelper.ejecutarConsulta("SELECT * FROM video", CommandType.Text);
            return View();
        }


    }
}