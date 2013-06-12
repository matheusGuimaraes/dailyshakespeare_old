using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using DailyShakespeare.DataService.Dtos;
using DailyShakespeare.Model;

namespace DailylShakespeare.Site.Models
{
    public class MonologueViewModel
    {
        public int Id { get; set; }

        [DisplayName("Reference Name* :")]
        [Required]
        public string Name { get; set; }

        [Required]
        public int PlayId { get; set; }

        public int SelectedCharacterId { get; set; }

        [DisplayName("Monologue* :")]
        [Required]
        public string Content { get; set; }

        [DisplayName("Play* :")]
        public List<Play> Plays { get; set; }

        [DisplayName("Name:")]
        public List<Character> Characters { get; set; }

    }

    public static class MonologueViewModelExtensions
    {
        public static MonologueDto ToDto(this MonologueViewModel model)
        {
            var dto = new MonologueDto();

            dto.Id = model.Id;
            dto.Content = model.Name;
            dto.CharacterId = model.SelectedCharacterId;

            return dto;

        }
    }


}