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
using SqlServerDAL;

namespace SqlServerDAL
{
    public class People : IPeople
    {
        private const string SQL_UPDATE_PERSONNAL = "UPDATE personalinfor set pName = @Name,pAge = @Age,pSex = @Sex,pTel = @Tel,pState='1' where pID=@ID";//更新用户
        private const string SQL_SELECT__PERSONNAL = "select * from personalinfor where pID=@ID";
        private const string SQL_GETLEVEL_PERSONAL = "select wLevel from personalworth where @Worth>=wRangeFrom AND @Worth<wRangeTo;";
        private const string SQL_UPDATE_PWD = "UPDATE personalinfor set pPwd = @Pwd where pID=@ID";
        private const string SQL_SELECT_PWD = "select pPwd from personalinfor where pID=@ID";
        private const string SQL_SELECT_VALUE = "select * from personalevaluation where pID=@ID";
        private const string uName = "@Name";
        private const string uAge = "@Age";
        private const string uSex = "@Sex";
        private const string uTel = "@Tel";
        private const string uID = "@ID";
        private const string PARM_WORTH = "@Worth";
        private const string uPwd = "@Pwd";
        bool result = false;


        public personalevaluationInfor getPersonValue(string id)
        {
            personalevaluationInfor personValue = new personalevaluationInfor();
            SqlParameter parm = new SqlParameter(uID, SqlDbType.Int);
            parm.Value = id;
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_VALUE, parm))
            {

                if (rdr.Read())
                {
                    personValue.personID = (int)rdr[1];
                    personValue.personQuality = (Double)rdr[2] + "";
                    personValue.personProficiency = (Double)rdr[3] + "";
                    personValue.personFocus = (Double)rdr[4] + "";
                    personValue.personDeviation = (Double)rdr[5] + "";
                    personValue.personResidence = (Double)rdr[6] + "";
                }
            }
            return personValue;
        }

        public bool updateInfor(string name, string age, string sex, string tel, string id)
        {
            using (SqlConnection conn = new SqlConnection(SqlServerHelper.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(SQL_UPDATE_PERSONNAL, conn);

                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@Age", SqlDbType.VarChar).Value = age;
                cmd.Parameters.Add("@Sex", SqlDbType.VarChar).Value = sex;
                cmd.Parameters.Add("@Tel", SqlDbType.VarChar).Value = tel;
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = id;
                conn.Open();
                //cmd.ExecuteScalar();
                cmd.ExecuteNonQuery();
                result = true;
                return result;
            }
        }
        public PageEntity.PersonalInfo getPeopleInfo(string ID)
        {
            PersonalInfo personInfo;
            SqlParameter parm = new SqlParameter(uID, SqlDbType.Int);
            parm.Value = ID;
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT__PERSONNAL, parm))
            {

                personInfo = new PersonalInfo();
                if (rdr.Read())
                {
                    personInfo.personalID = (int)rdr[0];
                    personInfo.personalName = (string)rdr[1];
                    personInfo.personalEmail = (string)rdr[3];
                    personInfo.personalAge = (int)rdr[4];
                    personInfo.personalSex = (string)rdr[5];
                    personInfo.personalTel = (string)rdr[6];

                    if (personInfo.personalWorth == null)
                    {
                        personInfo.personalWorth = "0";
                    }

                    //    personInfo.personalWorth = (string)rdr[8];
                    personInfo.personalLevel = getUserLevel(personInfo.personalWorth);
                }
            }

            return personInfo;
        }
        public int getUserLevel(string worth)
        {

            //PersonalInfo personInfo = new PersonalInfo();
            int level = 0;

            //Create a parameter
            SqlParameter parm = new SqlParameter(PARM_WORTH, SqlDbType.Int);
            parm.Value = worth;

            //Execute a query to read the order
            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_GETLEVEL_PERSONAL, parm))
            {
                if (rdr.Read())
                {
                    level = (int)rdr[0];
                }
            }
            return level;
        }

        public bool updatePwd(string oldPwd, string newPwd, string id)
        {
            if (getPwd(oldPwd, id))
            {
                using (SqlConnection conn = new SqlConnection(SqlServerHelper.ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand(SQL_UPDATE_PWD, conn);
                    string password = newPwd;
                    MD5 md5 = new MD5CryptoServiceProvider();
                    byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(password)); ;
                    //byte[] md5data = md5.ComputeHash(data);
                    md5.Clear();
                    string str = "";

                    for (int i = 0; i < data.Length - 1; i++)
                    {
                        str += data[i].ToString("x").PadLeft(2, '0');
                    }
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = id;
                    cmd.Parameters.Add("@Pwd", SqlDbType.VarChar).Value = str;
                    conn.Open();
                    //cmd.ExecuteScalar();
                    cmd.ExecuteNonQuery();
                    result = true;
                    return result;
                }
            }
            else
                return false;
        }
        private bool getPwd(string oldPwd, string id)
        {

            string password = oldPwd;
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(password)); ;
            //byte[] md5data = md5.ComputeHash(data);
            md5.Clear();
            string str = "";

            for (int i = 0; i < data.Length - 1; i++)
            {
                str += data[i].ToString("x").PadLeft(2, '0');
            }

            SqlParameter parm = new SqlParameter(uID, SqlDbType.VarChar);
            parm.Value = id;

            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_PWD, parm))
            {
                if (rdr.Read())
                {
                    // personInfo.personalPwd = (string)rdr[2];
                    string pPwd = (string)rdr[0];
                    if (pPwd.Equals(str))
                    {
                        result = true;//用户
                        return result;
                    }
                }
            }
            return false;
        }
    }
}
