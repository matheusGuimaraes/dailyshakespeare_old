using System.Collections.Generic;

namespace DailyShakespeare.DAL
{
    public interface IDataManager
    {
        List<Model.Play> GetPlays();
        List<Monologue> GetMonologues();
        List<Character> GetCharacters(); 
        void UpdatePlay(Model.Play play);
    }
}