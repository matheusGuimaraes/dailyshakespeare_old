using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using DailylShakespeare.Site.Controllers;
using NUnit.Framework;

namespace DailyShakespeare.Site.Tests
{
    [TestFixture]
    public class ControllerTests
    {
        private DataManagerController _dataManagerController;

        [SetUp]
        public void Init()
        {
            _dataManagerController = new DataManagerController();
        }

        [Ignore("must implement IOC before this test can be run")]
        [Test]
        public void Should_have_an_action_to_manage_characters()
        {
            var result = _dataManagerController.ManageCharacters(null);

            Assert.IsNotNull(result);
            Assert.IsInstanceOf(typeof(ViewResult), result);
            Assert.AreEqual("ManageCharacters", result.ViewName);

        }

        [Ignore("must implement IOC before this test can be run")]
        [Test]
        public void Should_have_an_action_to_manage_monologues()
        {
            var result = _dataManagerController.ManageMonologues(null);

            Assert.IsNotNull(result);
            Assert.IsInstanceOf(typeof(ViewResult),result);
          

        }
    }
}
