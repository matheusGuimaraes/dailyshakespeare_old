using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Username { get; set; }
        public UserType UserType { get; set; }

        public List< Monologue> Monologues { get; set; }
        public List<Character> Characters { get; set; }
        public List<Play> Plays { get; set; }
    }
}