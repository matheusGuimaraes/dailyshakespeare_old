using System.Collections.Generic;
using System.Linq;
using DailyShakespeare.DAL;
using DailyShakespeare.DataService.Dtos;
using DailyShakespeare.Model;
using Play = DailyShakespeare.Model.Play;

namespace DailyShakespeare.DataService
{
    public class DailyShakespeareService : IDailyShakespeareService
    {
        private readonly IDataManager _dataManager;

        public DailyShakespeareService()
        {
            _dataManager = new DataManager();
        }
        public List<Play> GetPlays()
        {
            return _dataManager.GetPlays();
        }

        public List<Gender> GetGenders()
        {
            return _dataManager.GetGenders();
        }

        public void SaveCharacter(CharacterDto characterDto)
        {
            var character = new Character();
            character.Id = characterDto.Id;
            character.Name = characterDto.Name;
            character.Play = GetPlays().First(x => x.Id == characterDto.PlayId);
            character.Gender = GetGenders().First(x => x.Id == characterDto.GenderId);

            _dataManager.SaveCharacter(character);
        }
    }
}
