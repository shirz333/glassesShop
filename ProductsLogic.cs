using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GlassesPr.App_Code
{
    public class ProductsLogic
    {
        DAL dal = new DAL();

        public DataSet GetAllProducts()
        {
            string sql = "SELECT * FROM Products ";
            return dal.excuteQuery(sql);
        }
        public DataSet GetProd(int productID)
        {
            string sql = "SELECT * FROM Products WHERE idProduct="+productID;
            return dal.excuteQuery(sql);
        }

        public void updateProd(double price, int id)
        {
            string sql = "UPDATE Products  SET price = " + price + " WHERE idProduct=" + id;
            dal.excuteQuery(sql);
        }
    }
}