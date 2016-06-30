using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PageEntity;

namespace IDALFac
{
    public interface ILogin
    {
        /*
         *注册用户 
         * 参数用户名，密码
         * 返回int
         * by wyl
         */
        int UserLogin(string name, string pwd);

        int getState(string name, string pwd);
        PageEntity.PersonalInfo getPerson(string name);
        PageEntity.EnterpriseInfo getEnterprise(string name);
    }
}
