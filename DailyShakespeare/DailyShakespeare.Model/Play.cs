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
    }
}