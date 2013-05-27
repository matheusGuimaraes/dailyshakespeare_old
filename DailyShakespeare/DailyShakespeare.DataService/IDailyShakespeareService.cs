using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DailyShakespeare.Model;

namespace DailyShakespeare.DataService
{
    [ServiceContract]
    public interface IDailyShakespeareService
    {

        [OperationContract]
        List<Play> GetPlays(int value);

    }

}
