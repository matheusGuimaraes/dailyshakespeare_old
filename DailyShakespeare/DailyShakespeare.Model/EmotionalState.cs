using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class EmotionalState
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public List<Monologue> Monologues { get; set; }
    }
}