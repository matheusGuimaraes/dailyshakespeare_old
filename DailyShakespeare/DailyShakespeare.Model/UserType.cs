using System.Collections.Generic;

namespace DailyShakespeare.Model
{
    public class UserType
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public List<User> Users { get; set; }
    }
}