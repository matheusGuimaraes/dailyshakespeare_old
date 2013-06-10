using System;
using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class Monologue
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public User LastUpdatedBy { get; set; }
        public List<EmotionalState> EmotionalStates { get; set; }
        public Character Character { get; set; }
        public DateTime LastUpdatedOn { get; set; }
    }
}
