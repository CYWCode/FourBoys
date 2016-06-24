using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class PersonalUserResumeHelper : IBLL.IPersonalUserResumeHelper
    {
        private IDALFac.IPersonalUserInfoFactory factory = new DALFac.PersonalUserInfoFactory();

        // 判断个人用户信息是否存在
        public bool existPersonalUserInfo(int id)
        {
            // FIXME
            return true;
        }
        // 获取个人用户信息
        public IBLL.IPersonalUserInfo getPersonalUserInfo(int id)
        {
            return factory.getPersonalUserInfo(id);
        }
        // 更新个人用户信息
        public void updatePersonalUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction)
        {
            updatePersonalUserInfo(new BLLEntity.PersonalUserInfo()
            {
                id = _id,
                name = _name,
                sex = _sex,
                age = _age,
                phoneNumber = _phoneNumber,
                hunting = _hunting,
                resumePath = _resumePath,
                direction = _direction
            });
        }

        private void updatePersonalUserInfo(IBLL.IPersonalUserInfo newInfo)
        {
            // FIXME
        }
    }
}
