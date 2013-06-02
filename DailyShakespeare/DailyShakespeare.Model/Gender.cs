using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class Gender
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public List<Character> Characters { get; set; }
    }
}