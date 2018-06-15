using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using orderSearchByDate.Data;

namespace orderSearchByDate.Bal
{
    public class bal
    {
        // when a date is selected, get all orders with that date
        public List<Order> getOrdersByDate(DateTime datetime)
        {
            using (var context = new NorthWindDataContext())
            {
                List<Order> ordersList = (from data in context.Orders where data.OrderDate== datetime select data).ToList();
                return ordersList;
            }
        }

        // when an order is selected, get order details : display orderId, ProductID, ProductName, Price, Quantity Discount

        public List <orderDetail> getOrderDetailsByOrderID (string orderID)
        {
            using (var context = new NorthWindDataContext())
            {
                List<orderDetail>  orderdetail =null;
                if (orderID != null)
                {
                    orderdetail = (from data in context.orderDetails where data.OrderID == Int32.Parse(orderID) select data).ToList();
                }

                return orderdetail;
            }
        }
    }
}