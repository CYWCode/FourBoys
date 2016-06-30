using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDALFac;
using PageEntity;
using System.Security.Cryptography;
namespace BLL
{
    public class LoginBusiness
    {
        private static readonly ILogin dal = DALFac.DataAccess.CreateLogin();

        public int Login(string name, string pwd)
        {

            return dal.UserLogin(name, pwd);

        }
        public int getState(string name, string pwd)
        {
            return dal.getState(name, pwd);
        }

        public PageEntity.PersonalInfo getPerson(string name)
        {
            return dal.getPerson(name);
        }

        public PageEntity.EnterpriseInfo getEnterprise(string name)
        {
            return dal.getEnterprise(name);
        }
    }
}
