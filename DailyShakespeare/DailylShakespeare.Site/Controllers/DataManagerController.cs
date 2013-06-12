using System.Collections.Generic;
using System.Linq;
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

        private List<Character> Characters { get; set; }

        public DataManagerController()
        {
            _service = new DailyShakespeareService();


        }
        public ViewResult ManageCharacters(CharacterViewModel model)
        {
            Characters = _service.GetCharacters();

            if(model.SelectedCharacterId != 0)
            {
                var character = Characters.First(c => c.Id == model.SelectedCharacterId);
                model.PlayId = character.Play.Id;
                model.GenderId = character.Gender.Id;
                model.Name = character.Name;
                model.Bio = character.Bio;
              
            }


            model.Characters = Characters;
            model.Plays = Plays;
            model.Genders = Genders;


            return View(model);
        }

        public ActionResult SaveCharacter(CharacterViewModel model)
        {
            if(ModelState.IsValid)
            {
                _service.SaveCharacter(model.ToDto());
            }

            return RedirectToAction("ManageCharacters");
        }


     
        public ViewResult ManageMonologues(MonologueViewModel model)
        {
            model.Plays = Plays;
            model.Characters = Characters;

            return View(model);
        }
    }
}
