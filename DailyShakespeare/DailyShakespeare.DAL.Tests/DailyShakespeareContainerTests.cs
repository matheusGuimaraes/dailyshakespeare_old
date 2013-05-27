using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            var play = new Model.Play();
            var p = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);

            play.Id = p.Id;
            play.Name = p.Name;
            play.Year = 2013;

            _dataManager.UpdatePlay(play);

            var result = _dataManager.GetPlays().FirstOrDefault(x => x.Id == 1);

            Assert.IsNotNull(result);
            Assert.AreEqual(2013, result.Year);
        }
    }
}
