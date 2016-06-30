using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDALFac;
using PageEntity;
using DALFac;

namespace BLL
{
    public class PeopleBusiness
    {
        private static readonly IPeople dal = DALFac.DataAccess.CreatePeople();

        public bool updateInfor(string name, string age, string sex, string tel, string pID)
        {


            bool result = dal.updateInfor(name, age, sex, tel, pID);
            return result; //修改用户信息
        }
        public PageEntity.PersonalInfo getPeopleInfo(string ID)
        {   
            return dal.getPeopleInfo(ID);
        }
        public bool updatePwd(string oldPwd, string newPwd, string id)
        {
            return dal.updatePwd(oldPwd, newPwd, id);
        }
        public PageEntity.personalevaluationInfor getPersonValue(string id)
        {
            return dal.getPersonValue(id);
        }
    }
}
