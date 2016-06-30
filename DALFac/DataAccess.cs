﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Configuration;
using IDALFac;


namespace DALFac
{
    public sealed class DataAccess
    {
        // Look up the DAL implementation we should be using
        //private static readonly string path = ConfigurationManager.AppSettings["WebDAL"];
        private static readonly string path = "SQLServerDAL";
        private DataAccess() { }

        /*
         * 实例化用户数据操作
         * */

        /*
        public static IDAL.IChallenge CreateChallenge()
        {
            string className = "SQLServerDAL.Challenge";
            return (IDAL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IDALPersonalInfo CreatePersonal()
        {
            string className = "SQLServerDAL.Personal";
            return (IDAL.IDALPersonalInfo)Assembly.Load(path).CreateInstance(className);
        }
        */


        public static IDALFac.IRegister CreateRegister()
        {
            string className = "SqlServerDAL.Register";
            return (IDALFac.IRegister)Assembly.Load(path).CreateInstance(className);
        }
        public static IDALFac.ILogin CreateLogin()
        {
            string className = "SqlServerDAL.Login";
            return (IDALFac.ILogin)Assembly.Load(path).CreateInstance(className);
        }

        
        
        
        // People
        public static IDALFac.IPeople CreatePeople()
        {
            string className = "SQLServerDAL.People";
            return (IDALFac.IPeople)Assembly.Load(path).CreateInstance(className);
        }

        /*
       *
        * 实例化挑战具体项目数据操作
        * *

       public static IDAL.IChallengeProject CreateChallengeProject()
       {
           string className = "SQLServerDAL.ChallengeProject";
           return (IDAL.IChallengeProject)Assembly.Load(path).CreateInstance(className);
       }

       *                         
        * 实例化个人挑战数据操作
        * *
       public static IDAL.IPersonalChallenge CreatePersonalChallenge()
       {
           string className = "SQLServerDAL.PersonalChallenge";
           return (IDAL.IPersonalChallenge)Assembly.Load(path).CreateInstance(className);
       }

       *                         
        * 实例化企业完善信息数据操作
        * *
       public static IDAL.IEnterpriceCompleteInfor1 CreateEnterpriceCompleteInfor1()
       {
           string className = "SQLServerDAL.EnterpriceCompleteInfor1";
           return (IDAL.IEnterpriceCompleteInfor1)Assembly.Load(path).CreateInstance(className);
       }

       *                         
  * 实例化企业信息数据
       * *
       public static IDAL.IEnterprise CreateEnterprise()
       {
           string className = "SQLServerDAL.Enterprise";
           return (IDAL.IEnterprise)Assembly.Load(path).CreateInstance(className);
       }

      */

          // 实例化企业完善信息数据操作
        
       public static IDALFac.IEnterpriceCompleteInfor1 CreateEnterpriceCompleteInfor1()
       {
           string className = "SQLServerDAL.EnterpriceCompleteInfor1";
           return (IDALFac.IEnterpriceCompleteInfor1)Assembly.Load(path).CreateInstance(className);
       }




    }
}
