using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DALFac
{
    public class PersonalUserInfoFactory : IDALFac.IPersonalUserInfoFactory
    {
        public IBLL.IPersonalUserInfo getPersonalUserInfo(int id)
        {
            // FIXME
            List<string> dirList = new List<string>();
            dirList.Add("Java");
            return new BLLEntity.PersonalUserInfo()
             {
                 id = id,
                 name = "测试用户" + id,
                 age = 20,
                 phoneNumber = "测试电话" + id,
                 sex = "男",
                 direction = dirList,
                 hunting = true,
                 resumePath = "测试路径"
             };
        }
    }
}
