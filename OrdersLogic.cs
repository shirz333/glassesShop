using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GlassesPr.App_Code
{
    public class OrdersLogic
    {
        DAL dal = new DAL();

        public DataSet GetAllOrders()
        {
            string sql = "SELECT * FROM Orders ";
            return dal.excuteQuery(sql);
        }



        public DataSet OrderCity(string city)  
          {
           string sql = "SELECT * FROM Orders WHERE city='" + city + "'";
            DataSet ds = dal.excuteQuery(sql);
            return ds;
          }

        public void UpdateOrder(int id)
        {
            string sql = "UPDATE Orders SET sent =True WHERE idOrder=" + id;
            dal.excuteQuery(sql);
        }
    }
    }
