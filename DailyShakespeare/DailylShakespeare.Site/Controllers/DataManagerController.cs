using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DailyShakespeare.DataService;
using DailyShakespeare.Model;
using DailylShakespeare.Site.Models;

namespace DailylShakespeare.Site.Controllers
{
    public class DataManagerController : Controller
    {
        private readonly IDailyShakespeareService _service;
        private List<Play> Plays
        {
            get
            {
                if (Session["Plays"] == null)
                {
                    Session["Plays"] = _service.GetPlays();
                }

                return (List<Play>) Session["Plays"];
            }
           
        }

        private List<Gender> Genders
        {
            get
            {
                if (Session["Genders"] == null)
                {
                    Session["Genders"] = _service.GetGenders();
                }

                return (List<Gender>)Session["Genders"];
            }
            
        }

        private List<Character> Characters
        {
            get
            {
                if (Session["Characters"] == null)
                {
                    Session["Characters"] = _service.GetCharacters();
                }

                return (List<Character>)Session["Characters"];
            }

        }

        public DataManagerController()
        {
            _service = new DailyShakespeareService();


        }
        public ActionResult ManageCharacters()
        {

            return View(new CharacterViewModel() { Plays = Plays, Genders = Genders, Characters = Characters});
        }

        public ActionResult SaveCharacter(CharacterViewModel model)
        {
            if(ModelState.IsValid)
            {
                _service.SaveCharacter(model.ToDto());
            }

            model.Plays = Plays;
            model.Genders = Genders;
            model.Characters = Characters;
            return View("Characters",model);
        }

        public ActionResult LoadCharacter(CharacterViewModel model)
        {

            model.Characters = Characters;
            model.Plays = Plays;
            model.Genders = Genders;
            return View("Characters", model);
        }

        public ActionResult Monologues()
        {
            return View();
        }

    }
}
