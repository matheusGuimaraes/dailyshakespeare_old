namespace DailyShakespeare.DataService.Dtos
{
    public class CharacterDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int PlayId { get; set; }
        public int GenderId { get; set; }
    }
}