using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using SqlServerDAL;

// 王韵倩

namespace DALFac
{
    public class PersonalUserInfoFactory : IDALFac.IPersonalUserInfoFactory
    {
        public IBLL.IPersonalUserInfo getPersonalUserInfo(int id)
        {
            DataClassesDataContext context = new DataClassesDataContext();
            UserInfo result = null;
            foreach (UserInfo info in context.UserInfo)
            {
                if (info.无意义主键ID == id) result = info;
            }
            if (result == null) return null;

            List<string> dirList = new List<string>();
            foreach (string dirItem in result.Development.Split(','))
            {
                dirList.Add(dirItem);
            }
            string _sex = "";
            if ((bool) result.Sex) {
                _sex = "男";
            } else {
                _sex = "女";
            }
            return new BLLEntity.PersonalUserInfo()
            {
                 id = (int) result.无意义主键ID,
                 name = result.Name,
                 age = (int) result.Age,
                 phoneNumber = result.PhoneNum,
                 sex = _sex,
                 direction = dirList,
                 hunting = (bool) result.IsCandidate,
                 resumePath = result.CV
             };
        }


        public bool existPersonalUserInfo(int id)
        {
            DataClassesDataContext context = new DataClassesDataContext();
            bool result = false;
            foreach (UserInfo info in context.UserInfo)
            {
                if (info.无意义主键ID == id)
                {
                    result = true;
                    break;
                }
            }
            return result;
        }

        public void updateUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction)
        {
            bool sex = true;
            if (_sex.CompareTo("男") == 0) sex = true;
            else sex = false;
            string development = "";
            if (_direction.Count > 0)
            {
                development = _direction[0];
                for (int i = 1; i < _direction.Count; i ++)
                {
                    development = development + "," + _direction[i];
                }
            }
            // FIXME: Mail, Position
            UserInfo newUserInfo = new UserInfo()
            {
                无意义主键ID = _id,
                Name = _name,
                Sex = sex,
                Age = _age,
                IsCandidate = _hunting,
                Mail = "测试邮箱",
                CV = _resumePath,
                PhoneNum = _phoneNumber,
                Position = "测试职位",
                Development = development
            };

            DataClassesDataContext context = new DataClassesDataContext();
            var query = from info in context.UserInfo
                        where info.无意义主键ID == newUserInfo.无意义主键ID
                        select info;
            foreach (UserInfo info in query) {
                info.Name = newUserInfo.Name;
                info.Sex = newUserInfo.Sex;
                info.Age = newUserInfo.Age;
                info.IsCandidate = newUserInfo.IsCandidate;
                info.Mail = newUserInfo.Mail;
                info.CV = newUserInfo.CV;
                info.PhoneNum = newUserInfo.PhoneNum;
                info.Position = newUserInfo.Position;
                info.Development = newUserInfo.Development;
            }
            context.SubmitChanges();
        }

        public void insertUserInfo(int _id, string _name, string _sex, int _age, string _phoneNumber, bool _hunting, string _resumePath, List<string> _direction)
        {
            bool sex = true;
            if (_sex.CompareTo("男") == 0) sex = true;
            else sex = false;
            string development = "";
            if (_direction.Count > 0)
            {
                development = _direction[0];
                for (int i = 1; i < _direction.Count; i ++)
                {
                    development = development + "," + _direction[i];
                }
            }
            // FIXME: Mail, Position
            UserInfo newUserInfo = new UserInfo()
            {
                无意义主键ID = _id,
                Name = _name,
                Sex = sex,
                Age = _age,
                IsCandidate = _hunting,
                Mail = "测试邮箱",
                CV = _resumePath,
                PhoneNum = _phoneNumber,
                Position = "测试职位",
                Development = development
            };

            DataClassesDataContext context = new DataClassesDataContext();
            context.UserInfo.InsertOnSubmit(newUserInfo);
            context.SubmitChanges();
        }

        public int getPersonalUserNum()
        {
            DataClassesDataContext context = new DataClassesDataContext();
            var query = from item in context.User
                        select item;
            return query.Count<User>();
        }

        public int getChallengeNum()
        {
            DataClassesDataContext context = new DataClassesDataContext();
            var query = from item in context.UserChallengeContent
                        select item;
            return query.Count<UserChallengeContent>();
        }

        public int getEnterpriseUserNum()
        {
            DataClassesDataContext context = new DataClassesDataContext();
            var query = from item in context.EnterPrise
                        select item;
            return query.Count<EnterPrise>();
        }

        public List<IBLL.IAdminPersonalUser> getPersonUserList()
        {
            List<IBLL.IAdminPersonalUser> list = new List<IBLL.IAdminPersonalUser>();

            DataClassesDataContext context = new DataClassesDataContext();
            var query = from item in context.User
                        select item;
            foreach (User user in query)
            {
                string _sex = "未知";
                int _age = -1;
                bool _hunting = true;
                string _name = "未知";
                string _phoneNum = "未知";

                var infoQuery = from item in context.UserInfo
                               select item;
                foreach (UserInfo info in infoQuery)
                {
                    if (info.无意义主键ID == user.ID)
                    {
                        if ((bool)info.Sex) _sex = "男";
                        else _sex = "女";

                        _age = (int) info.Age;
                        _hunting = (bool) info.IsCandidate;
                        _name = info.Name;
                        _phoneNum = info.PhoneNum;

                        break;
                    }
                }

                IBLL.IAdminPersonalUser newUser = new BLLEntity.AdminPersonalUserInfo()
                {
                    id = (int)user.ID,
                    email = user.Email,
                    phoneNumber = _phoneNum,
                    userName = user.UserName,
                    name = _name,
                    sex = _sex,
                    age = _age,
                    hunting = _hunting
                };
                list.Add(newUser);
            }

            return list;
        }
    }

}
