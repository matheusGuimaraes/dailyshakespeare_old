using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DailyShakespeare.Model;
using System.Data.Entity;

namespace DailyShakespeare.DAL
{
    public class DataManager : IDataManager
    {
        public List<Play>  GetPlays()
        {
            List<Play> plays;

            using (var context = new DailyShakespeareContext())
            {
                
                plays = context.Plays.OrderBy(x => x.Name).ToList();

            }

            return plays;
        }

        public List<Monologue> GetMonologues()
        {
            List<Monologue> monologues;

            using (var context = new DailyShakespeareContext())
            {
                monologues = context.Monologues.ToList();

            }

            return monologues;
        }

        public List<Character> GetCharacters()
        {
            List<Character> characters;

            using (var context = new DailyShakespeareContext())
            {
                characters = context.Characters.Include(x => x.Play).Include(x => x.Gender).OrderBy(x => x.Name).ToList();

            }

            return characters;
        }

        public List<Gender> GetGenders()
        {
            List<Gender> genders;

            using (var context = new DailyShakespeareContext())
            {
                genders = context.Genders.ToList();

            }

            return genders;
        }

        public void UpdatePlay(Play play)
        {
            using (var context = new DailyShakespeareContext())
            {
                var playDb = context.Plays.FirstOrDefault(p => p.Id == play.Id);

                if (playDb == null)
                    throw new OperationCanceledException("no play with id of " + play.Id + " was found.");

                playDb.Name = play.Name;
                playDb.Year = play.Year;

                context.SaveChanges();
            }
        }

        public void SaveCharacter(Character character)
        {
            using (var context = new DailyShakespeareContext())
            {
                character.LastUpdatedOn = DateTime.UtcNow;

                if(character.Id == 0)
                context.Characters.AddObject(character);
                else
                {
                    context.Characters.Attach(character);
                    context.ObjectStateManager.ChangeObjectState(character, EntityState.Modified);
                }
               
                context.ObjectStateManager.ChangeObjectState(character.Play, EntityState.Unchanged);
                context.ObjectStateManager.ChangeObjectState(character.Gender, EntityState.Unchanged);
                context.SaveChanges();
            }
        }
    }
}
