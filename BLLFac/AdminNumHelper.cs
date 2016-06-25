using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// 王韵倩

namespace BLLFac
{
    public class AdminNumHelper : IBLLFac.IAdminNumHelper
    {
        private IDALFac.IPersonalUserInfoFactory factory = new DALFac.PersonalUserInfoFactory();

        public int getPersonalUserNum()
        {
            return factory.getPersonalUserNum();
        }

        public int getChallengeNum()
        {
            return factory.getChallengeNum();
        }

        public int getEnterpriseUserNum()
        {
            return factory.getEnterpriseUserNum();
        }
    }
}
