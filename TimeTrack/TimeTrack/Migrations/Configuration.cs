namespace TimeTrack.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using TimeTrack.Models;  //this is to use Models

    internal sealed class Configuration : DbMigrationsConfiguration<TimeTrack.Models.TimeTrackerDBContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(TimeTrack.Models.TimeTrackerDBContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.

            context.Employees.RemoveRange(context.Employees);
            context.Timecards.RemoveRange(context.Timecards);

            IList<Employee> Employees = new List<Employee>();

            Employees.Add(new Employee()
            {
                ID = 1,
                FirstName = "Alex",
                LastName = "Smith",
                Department = "IT",
                Role = "accountant",
                DateOfHire = DateTime.Now.AddDays(-150),
            TimeCards = new List<TimeCard> {
                 new TimeCard {ID=1, SubmissionDate=DateTime.Now.AddDays(-7),
                MondayHours=5, ThursdayHours=7, WednesdayHours=3, TuesdayHours=4, FridayHours=4, SaturdayHours=5, SundayHours=2},
                new TimeCard {ID=2, SubmissionDate=DateTime.Now,
                MondayHours=8, ThursdayHours=6, WednesdayHours=7, TuesdayHours=5, FridayHours=7, SaturdayHours=6, SundayHours=2},

            }
            });

            Employees.Add(new Employee()
            {
                ID = 2,
                FirstName = "Jason",
                LastName = "Milton",
                Department = "Education",
                Role = "Manager",
                DateOfHire = DateTime.Now.AddDays(-50),
                TimeCards = new List<TimeCard> {
                 new TimeCard {ID=1, SubmissionDate=DateTime.Now.AddDays(-7),
                MondayHours=5, ThursdayHours=5, WednesdayHours=6, TuesdayHours=6, FridayHours=6, SaturdayHours=2, SundayHours=2},
                new TimeCard {ID=2, SubmissionDate=DateTime.Now,
                MondayHours=8, ThursdayHours=8, WednesdayHours=8, TuesdayHours=5, FridayHours=7},

            }
            });

            context.Employees.AddRange(Employees);
            base.Seed(context);
        }
    }
}
