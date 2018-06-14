using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TimeTrack.Models
{
    public class Repository
    {
        TimeTrackerDBContext context = new TimeTrackerDBContext();
        //get all employees
        public List<Employee> GetEmployees()
        {
            return (from e in context.Employees select e).ToList();
        }

        // get all timecard by employeeID
        public List<TimeCard> GetTimeCardsByEmployeeID (int EmployeeID)
        {
            return (from em in context.Employees where em.ID == EmployeeID select em.TimeCards).SingleOrDefault(); 
          
        }
    }
}