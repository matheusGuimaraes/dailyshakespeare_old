using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class Character
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Play Play { get; set; }
        public Gender Gender { get; set; }

        public List<Monologue> Monologues { get; set; }
    }
}