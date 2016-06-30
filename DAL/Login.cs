using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.Configuration;
using PageEntity;
using IDALFac;
//using DBUtility;


namespace SqlServerDAL
{
    public class Login : ILogin
    {
        private const string SQL_SELECT_PERSON = "select * from personalinfor where pEmail = @Name";//查找用户
        private const string SQL_SELECT_ENTER = "select * from enterpriseinfor where eEmail = @Name";//查找用户
        private const string SQL_SELECT_PERSON_STATE = "select * from personalinfor where pEmail = @Name";//查找用户
        private const string SQL_SELECT_ENTER_STATE = "select * from enterpriseinfor where eEmail = @Name";//查找用户
        private const string uN = "@Name";
        private const string pwd = "@pwd";
        private int result = 0;

        public PageEntity.EnterpriseInfo getEnterprise(string name)
        {
            SqlParameter parm = new SqlParameter(uN, SqlDbType.VarChar);
            parm.Value = name;
            EnterpriseInfo enterprise = new EnterpriseInfo();
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_ENTER_STATE, parm))
            {
                if (rdr.Read())
                {

                    enterprise.enterpriseID = (int)rdr[0];
                    enterprise.enterpriseName = (string)rdr[1];
                    enterprise.enterpriseEmail = (string)rdr[3];

                }

            }
            return enterprise;

        }
        public PageEntity.PersonalInfo getPerson(string name)
        {
            SqlParameter parm = new SqlParameter(uN, SqlDbType.VarChar);
            parm.Value = name;
            PersonalInfo personInfo = new PersonalInfo();
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_PERSON_STATE, parm))
            {
                if (rdr.Read())
                {

                    personInfo.personalID = (int)rdr[0];
                    personInfo.personalName = (string)rdr[1];
                    personInfo.personalEmail = (string)rdr[3];

                }

            }


            return personInfo;
        }

        public int getState(string name, string pwd)
        {
            SqlParameter parm = new SqlParameter(uN, SqlDbType.VarChar);
            parm.Value = name;

            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_PERSON_STATE, parm))
            {
                if (rdr.Read())
                {
                    // personInfo.personalPwd = (string)rdr[2];
                    int state = (int)rdr[10];
                    return state;
                }

            }

            /* using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_ENTER_STATE, parm))
             {
                 if (rdr.Read())
                 {
                     // personInfo.personalPwd = (string)rdr[2];
                     int state = (int)rdr[16];
                     return state;
                 }

             }*/
            return 0;
        }

        public int UserLogin(string name, string pwd)
        {
            string userName = name;
            string password = pwd;

            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(password)); ;
            //byte[] md5data = md5.ComputeHash(data);
            md5.Clear();
            string str = "";

            for (int i = 0; i < data.Length - 1; i++)
            {
                str += data[i].ToString("x").PadLeft(2, '0');
            }

            PersonalInfo personInfo = new PersonalInfo();

            SqlParameter parm = new SqlParameter(uN, SqlDbType.VarChar);
            parm.Value = userName;

            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_PERSON, parm))
            {
                if (rdr.Read())
                {
                    // personInfo.personalPwd = (string)rdr[2];
                    string pPwd = (string)rdr[2];
                    if (pPwd.Equals(str))
                    {
                        result = 1;//用户
                        return result;
                    }
                }

            }
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_ENTER, parm))
            {
                if (rdr.Read())
                {
                    // personInfo.personalPwd = (string)rdr[2];

                    string pPwd = (string)rdr[2];
                    if (pPwd.Equals(str))
                    {
                        result = 2;//企业
                        return result;
                    }
                }
            }

            return result;
        }

    }
}
