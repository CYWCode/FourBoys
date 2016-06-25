using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// 王韵倩

namespace IBLL
{
    public interface IPersonalUserResumeHelper
    {
        // 判断个人用户信息是否存在
        bool existPersonalUserInfo(int id);
        // 获取个人用户信息
        IPersonalUserInfo getPersonalUserInfo(int id);
        // 更新个人用户信息
        void updatePersonalUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction);
    }
}
