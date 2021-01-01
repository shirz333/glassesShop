using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GlassesPr.App_Code
{
    public class UsersTableLogic
    {

        DAL dal = new DAL();
       // private string userName;
        public bool CheckExistPassword(string Password1) //בודקת האם קיימת סיסמה כזאת 
        {
            string sql = string.Format("SELECT password1 FROM usersTable WHERE password1='{0}'", Password1);
            DataSet ds = dal.excuteQuery(sql);
            return ds.Tables[0].Rows.Count != 0;
        }

        public void AddNewUser(string idUser, string userName1, string fullName, string password1, string email)// יצירת שם משתמש
        {
            string sql = "INSERT INTO usersTable Values (  '" + idUser + "','" + userName1 + "', '" + fullName + "',  '" + password1 + "', '" + email + "', False )";
            dal.excuteQuery(sql);
        }
        public bool CheckExistUser(string userName1, string password1) // בודקת האם קיים שם משתמש כזה והאם זאת הסיסמא של משתמש עם שם משתמש זה 
        {
            string sql =  "SELECT * FROM usersTable WHERE userName1='" + userName1 + "' And password1= '" + password1 + "'" ;
            DataSet ds = dal.excuteQuery(sql);
            return ds.Tables[0].Rows.Count != 0;
        }
        public string GetName(string userName1, string password1) // בודקת האם קיים שם משתמש כזה והאם זאת הסיסמא של משתמש עם שם משתמש זה 
        {
            string sql = "SELECT * FROM UsersTable WHERE userName1='" + userName1 + "' And password1= '" + password1 + "'";
            DataSet ds = dal.excuteQuery(sql);
            return ds.Tables[0].Rows[0]["fullName"].ToString();
        }
        public bool IfManager (string password1) 
        {
            string sql = "SELECT * FROM UsersTable WHERE isManager=True And password1='"  + password1 + "'";
            DataSet ds = dal.excuteQuery(sql);
            return ds.Tables[0].Rows.Count != 0;
        }
    }
}

