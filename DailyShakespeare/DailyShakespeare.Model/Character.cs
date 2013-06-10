using System;
using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class Character
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public virtual Play Play { get; set; }
        public virtual Gender Gender { get; set; }
        public string Bio { get; set; }
        public virtual List<Monologue> Monologues { get; set; }
        public DateTime LastUpdatedOn { get; set; }
        public User LastUpdatedBy { get; set; }
    }
}