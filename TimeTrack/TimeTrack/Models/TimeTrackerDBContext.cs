using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace TimeTrack.Models
{
    public class TimeTrackerDBContext : DbContext
    {
        // add db sets for tables
        public DbSet <Employee> Employees { get; set; }
        public DbSet <TimeCard> Timecards { get; set; }
    }
}