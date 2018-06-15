using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ADONET_Demo.Models
{
    public class Course
    {
        public string Code { get; set; }
        public string Name { get; set; }
        public string Semester { get; set; }
        public int Duration { get; set; }
    }
}