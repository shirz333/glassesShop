using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GlassesPr.App_Code
{
    public class CitiesLogic
    {
        DAL dal = new DAL();
        public DataSet GetAllCities()
        {
            string sql = "SELECT * FROM Cities ";
            return dal.excuteQuery(sql);
        }
    }
}