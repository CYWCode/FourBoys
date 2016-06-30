using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
//using DBUtility;
using PageEntity;
using IDALFac;
//using System.Text;
using System.Security.Cryptography;
using System.Configuration;
using SqlServerDAL;

namespace SqlServerDAL
{
    public class Register : IRegister
    {


            /*

            DataClassesDataContext dataContext = new DataClassesDataContext();

            User user1 = new User()
            {
                Email = userName,
                PhoneNum = "0",
                UserName = userName,
                UserPwd = password
            };

            dataContext.User.InsertOnSubmit(user1);

            EnterPrise enterP1 = new EnterPrise()
            {
                EPName = "测试企业",
                PhomeNum = "12313",
                Email = userName,
                EPScale = 1,
                ContactInfo = "sfds",
                EPAbbreviation = "sadf"

            };
            dataContext.EnterPrise.InsertOnSubmit(enterP1);

            return true;
            */






            private const string SQL_INSERT_PERSONNAL = "INSERT INTO personalinfor(pName,pPwd,pEmail,pState) VALUES (@Name,@Password,@Email,@State) SELECT @@identity AS id;";//用户
            private const string SQL_INSERT_ENTERPRISE = "INSERT INTO enterpriseInfor (eNmae,ePwd,eEmail,eState) VALUES (@Name,@Password,@Email,State) SELECT @@identity AS id;";//企业注册

            private const string PARM_ID = "@Id";
            private const string PARM_NAME = "@Name";
            private const string PARM_PWD = "@Password";
            private const string PARM_EMAIL = "@Email";
            private const string PARM_STATE = "@State";
            private bool result = false;

        public bool RegisterPerson(string Uname, string pwd, int role)
        {

            string userName = Uname;
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


            using (SqlConnection conn = new SqlConnection(SqlServerHelper.ConnectionString))
            {

                if (role == 1)
                {//企业
                    SqlCommand cmd = new SqlCommand("InsertEnter", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = userName;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = str;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = userName;
                    cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = 0;
                    conn.Open();
                    //cmd.ExecuteScalar();
                    cmd.ExecuteNonQuery();
                    result = true;
                    return result;
                }
                else
                { //开发者
                    SqlCommand cmd = new SqlCommand("InsertPerson", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = userName;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = str;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = userName;
                    cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = 0;
                    conn.Open();
                    //cmd.ExecuteScalar();
                    cmd.ExecuteNonQuery();
                    result = true;
                    return result;
                }

            }
        }


        


    }
}
