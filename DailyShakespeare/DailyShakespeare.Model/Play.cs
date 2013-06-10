using System;
using System.Collections.Generic;
using System.Runtime.Serialization;

namespace DailyShakespeare.Model
{
    [DataContract]
    public class Play
    {
        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public int Year { get; set; }
        [DataMember]
        public DateTime LastUpdatedOn { get; set; }
        [DataMember]
        public User LastUpdatedBy { get; set; }

        public List<Monologue> Monologues { get; set; }
        public List<Character> Characters { get; set; }
    }
}