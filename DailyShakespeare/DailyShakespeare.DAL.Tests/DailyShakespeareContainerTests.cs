using System.Linq;
using DailyShakespeare.Model;
using NUnit.Framework;

namespace DailyShakespeare.DAL.Tests
{
    [Ignore("This is an integration test. It's not robust as it relies on actual connection to the database and no scripts are run before it. Use it to test things at whim for convenience.")]
    [TestFixture]
    public class DailyShakespeareContainerTests
    {
        private IDataManager _dataManager;

        [SetUp]
        public void Init()
        {
            _dataManager = new DataManager();
        }

        [Test]
        public void Should_return_all_plays()
        {
            var plays = _dataManager.GetPlays();

            Assert.IsNotNull(plays);
            Assert.AreEqual(39, plays.Count);
        }

        [Test]
        public void Should_update_a_play()
        {
            var play = new Play();
            var p = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);

            play.Id = p.Id;
            play.Name = p.Name;
            play.Year = 2013;

            _dataManager.UpdatePlay(play);

            var result = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);

            Assert.IsNotNull(result);
            Assert.AreEqual(2013, result.Year);
        }

        [Test]
        public void Should_create_a_character()
        {
            var character = new Character();
            var play = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);
            var gender = _dataManager.GetGenders().FirstOrDefault(x => x.Id == 1);

            character.Play = play;
            character.Gender = gender;
            character.Name = "Prospero";

            _dataManager.SaveCharacter(character);

            var chars = _dataManager.GetCharacters();

            Assert.IsNotNull(chars);
            Assert.AreEqual(1, chars.Count);

        }

        //[Test]
        //public void Should_update_a_character()
        //{
        //    var play = new Character();
        //    var p = _dataManager.GetCharacters().FirstOrDefault(x => x.Id == 1);

        //    play.Id = p.Id;
        //    play.Name = p.Name;
        //    play.Year = 2013;

        //    _dataManager.UpdatePlay(play);

        //    var result = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);

        //    Assert.IsNotNull(result);
        //    Assert.AreEqual(2013, result.Year);
        //}
    }
}
