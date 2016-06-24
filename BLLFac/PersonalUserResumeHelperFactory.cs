using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLFac
{
    public class PersonalUserResumeHelperFactory : IBLLFac.IPersonalUserResumeHelperFactory
    {
        public IBLL.IPersonalUserResumeHelper getPersonalUserResumeHelper()
        {
            return new BLL.PersonalUserResumeHelper();
        }
    }
}
