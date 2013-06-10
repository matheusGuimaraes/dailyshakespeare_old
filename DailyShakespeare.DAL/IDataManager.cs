using System.Collections.Generic;
using DailyShakespeare.Model;

namespace DailyShakespeare.DAL
{
    public interface IDataManager
    {
        List<Play> GetPlays();
        List<Monologue> GetMonologues();
        List<Character> GetCharacters();
        List<Gender> GetGenders();
        void UpdatePlay(Play play);
        void SaveCharacter(Character character);
        List<Update> GetLatestUpdates(int numberToRetrieve);
    }
}