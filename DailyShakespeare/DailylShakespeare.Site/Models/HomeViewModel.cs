using System.Collections.Generic;
using System.Web.Mvc;
using DailyShakespeare.Model;

namespace DailylShakespeare.Site.Models
{
    public class HomeViewModel
    {
        public List<Update> Updates { get; set; }

    }

    public static class HelperExtensions
    {
        public static MvcHtmlString TranslateNumber(this HtmlHelper helper, int number)
        {
            string word;

            switch(number)
            {
                case 1:
                    word = "one";
                    break;
                case 2:
                    word = "two";
                    break;
                case 3:
                    word = "three";
                    break;
                default:
                    word = string.Empty;
                    break;
            }

            return new MvcHtmlString(word);
        }
    }



}