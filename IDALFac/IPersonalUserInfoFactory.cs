using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// 王韵倩

namespace IDALFac
{
    public interface IPersonalUserInfoFactory
    {
        IBLL.IPersonalUserInfo getPersonalUserInfo(int id);
        bool existPersonalUserInfo(int id);
        void updateUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction);
        void insertUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction);
        int getPersonalUserNum();
        int getChallengeNum();
        int getEnterpriseUserNum();
        List<IBLL.IAdminPersonalUser> getPersonUserList();
    }
}
