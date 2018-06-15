using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace TimeTrack.Models
{
    public class Employee
    {
        public int ID { get; set; }
        [Required]
        [StringLength(100)]
        public  string FirstName { get; set; }
        [Required]
        [StringLength(100)]
        public string LastName { get; set; }
        public string Department { get; set; }
        public string Role { get; set; }
        public DateTime DateOfHire { get; set; }
        public List<TimeCard> TimeCards { get; set; }
    }
}