using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DailyShakespeare.DAL;
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
        public List<Play> GetPlays(int value)
        {
            return _dataManager.GetPlays();
        }
    }
}
