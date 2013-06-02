using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using DailyShakespeare.DataService.Dtos;
using DailyShakespeare.Model;

namespace DailylShakespeare.Site.Models
{
    public class CharacterViewModel
    {
        [DisplayName("Name* :")]
        [Required]
        public string Name { get; set; }

        [Required]
        public int PlayId { get; set; }

                [Required]
        public int GenderId { get; set; }

        [DisplayName("Gender* :")]
        public List<Gender> Genders { get; set; }

        [DisplayName("Play* :")]
        public List<Play> Plays { get; set; }


    }

    public static class CharacterViewModelExtensions
    {
        public static CharacterDto ToDto(this CharacterViewModel model)
        {
            var dto = new CharacterDto();

            dto.Name = model.Name;
            dto.PlayId = model.PlayId;
            dto.GenderId = model.GenderId;

            return dto;

        }
    }


}