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
    public class EnterpriceCompleteInfor1 : IEnterpriceCompleteInfor1
    {
        private const string SQL_UPDATE_PWD = "UPDATE enterpriseinfor set ePwd = @Pwd where eID=@ID";
        private const string SQL_SELECT_PWD = "select ePwd from enterpriseinfor where eID=@ID";
        private const string SQL_SELECT_ACC = "select * from enterpriseaccount where eID=@ID";
        private const string uID = "@ID";
        private const string uPwd = "@Pwd";
        bool result = false;
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

        public void SaveEnterpriceInformation1(string useremail, string wholeName, string shortName,
               string website, string area, string scale, string describe)
        {
            int a = 0;
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

        public PageEntity.EnterpriseAcc getEnterAcc(string id)
        {
            EnterpriseAcc enterpriseAcc = new EnterpriseAcc();

            SqlParameter parm = new SqlParameter(uID, SqlDbType.VarChar);
            parm.Value = id;

            using (SqlDataReader rdr = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionString, CommandType.Text, SQL_SELECT_ACC, parm))
            {
                if (rdr.Read())
                {
                    enterpriseAcc.enterpriseInvNum = (int)rdr[2];
                    enterpriseAcc.enterpriseChlNum = (int)rdr[3];
                    enterpriseAcc.enterpriseInvDone = (int)rdr[4];
                    enterpriseAcc.enterpriseChlDone = (int)rdr[5];
                    //  enterpriseAcc.enterprisePurchaseTime =(DateTime)rdr[6];
                    //  enterpriseAcc.enterpriseRechargeState = (int)rdr[7];
                    //  enterpriseAcc.enterpriseRechargeCode = (string)rdr[8];
                }
            }
            return enterpriseAcc;
        }

    }
}
