using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GlassesPr.App_Code
{
    public class WaitingForConttactLogic
    {
        DAL dal = new DAL();
        public void AddNewInquiries(string phoneNumber, string content, string fullName, string type, DateTime t)//date)

        {
            string sql = "INSERT INTO WaitingForConttact Where Values (  '" + phoneNumber + "','" + content + "', '" + fullName + "' , '" + type + "', '" + t + "', No  )";
            dal.excuteQuery(sql);
        }

        public DataSet GetInquiries()
        {
            string sql = "SELECT * FROM WaitingForConttact";
            return dal.excuteQuery(sql);
        }

        public void UpdateInq( int id)
        {
            string sql = "UPDATE WaitingForConttact SET wasTreated =True WHERE idInquiries=" + id;
            dal.excuteQuery(sql);
        }
    }
}