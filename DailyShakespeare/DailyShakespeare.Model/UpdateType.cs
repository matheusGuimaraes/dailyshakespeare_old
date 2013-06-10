using System;
using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class UpdateType
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public List<Update> Updates { get; set; }

    }

}