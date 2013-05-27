using System;
using System.Collections.Generic;
using System.Linq;


namespace DailyShakespeare.DAL
{
    public class DataManager : IDataManager
    {
        public List<Model.Play>  GetPlays()
        {
            List<Model.Play> plays;

            using(var context = new DailyShakespeareContainer())
            {
                
                var playsDb = context.Plays;

                plays = playsDb.Select(p => new Model.Play() {Id = p.Id, Name = p.Name, Year = p.Year}).ToList();

            }

            return plays;
        }

        public List<Monologue> GetMonologues()
        {
            List<Monologue> monologues;

            using (var context = new DailyShakespeareContainer())
            {
                monologues = context.Monologues.ToList();

            }

            return monologues;
        }

        public List<Character> GetCharacters()
        {
            List<Character> characters;

            using (var context = new DailyShakespeareContainer())
            {
                characters = context.Characters.ToList();

            }

            return characters;
        }

        public void UpdatePlay(Model.Play play)
        {
            using (var context = new DailyShakespeareContainer())
            {
                var playDb = context.Plays.FirstOrDefault(p => p.Id == play.Id);

                if (playDb == null)
                    throw new OperationCanceledException("no play with id of " + play.Id + " was found.");

                playDb.Name = play.Name;
                playDb.Year = play.Year;

                context.SaveChanges();
            }
        }
    }
}
