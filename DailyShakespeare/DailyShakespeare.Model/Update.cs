using System;

namespace DailyShakespeare.Model
{
    public class Update
    {
        public int Id { get; set; }
        public int UpdatedItemId { get; set; }
        public User User { get; set; }
        public DateTime Date { get; set; }
        public UpdateAction UpdateAction { get; set; }
        public UpdateType UpdateType { get; set; }
        public string UpdatedItemName { get; set; }
    }

}