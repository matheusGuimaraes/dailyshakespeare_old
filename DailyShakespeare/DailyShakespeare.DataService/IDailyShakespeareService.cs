﻿using System.Collections.Generic;
using System.ServiceModel;
using DailyShakespeare.DataService.Dtos;
using DailyShakespeare.Model;

namespace DailyShakespeare.DataService
{
    [ServiceContract]
    public interface IDailyShakespeareService
    {

        [OperationContract]
        List<Play> GetPlays();

        [OperationContract]
        List<Gender> GetGenders();

        [OperationContract]
        void SaveCharacter(CharacterDto character);

    }

}
