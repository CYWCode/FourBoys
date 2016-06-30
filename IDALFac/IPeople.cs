using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDALFac
{
    public interface IPeople
    {
        /*
         *修改用户信息 
         * 参数用户名，年龄，性别，联系方式
         * 返回bool
         * by wyl
         */
        bool updateInfor(string name, string age, string sex, string tel, string pID);
        PageEntity.PersonalInfo getPeopleInfo(string ID);
        bool updatePwd(string oldPwd, string newPwd, string id);
        PageEntity.personalevaluationInfor getPersonValue(string id);
    }
}
