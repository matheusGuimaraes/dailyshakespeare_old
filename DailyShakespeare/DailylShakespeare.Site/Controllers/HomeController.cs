using System.Web.Mvc;
using DailyShakespeare.DataService;
using DailylShakespeare.Site.Models;

namespace DailylShakespeare.Site.Controllers
{
    public class HomeController : Controller
    {
        private readonly IDailyShakespeareService _dailyShakespeareService;


        public HomeController()
        {
            _dailyShakespeareService = new DailyShakespeareService();
        }

        public ActionResult Index()
        {
            var updates = _dailyShakespeareService.GetLatestUpdates(3);

            return View(new HomeViewModel() { Updates = updates});
        }
    }
}
