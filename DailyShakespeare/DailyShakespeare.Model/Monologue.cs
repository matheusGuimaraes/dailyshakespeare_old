using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DailyShakespeare.Model
{
    public class Monologue
    {
        public int Id { get; set; }
        public string Content { get; set; }

        public Play Play { get; set; }

        
    }
}
