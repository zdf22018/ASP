using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ObjectDataSource.Data1;

namespace ObjectDataSource.Bal1
{
    public class Bal_Northwind
    {
        public List<string> getCountries()
        {
            using (var context = new DataClasses1DataContext())
            {
                List<string> countriesList = (from data in context.Customers select data.Country).ToList();
                return countriesList;
            }
        }
        //upon selection of countries, all customers from that country will be displayed in the dataview

        public List<Customer> getCustomersByCounty(string country)
        {
            using (var context = new DataClasses1DataContext())
            {
                List<Customer> customersList = (from data in context.Customers where data.Country == country select data).ToList();
                return customersList;
            }
        }

        //get a customer by customer ID 
        public Customer GetCustomer(string customerId){
            using (var context = new DataClasses1DataContext()) {
                Customer customer = (from data in context.Customers where data.CustomerID == customerId select data).SingleOrDefault();
                return customer;
            }
}


    }
}