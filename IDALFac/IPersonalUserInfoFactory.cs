using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDALFac
{
    public interface IPersonalUserInfoFactory
    {
        IBLL.IPersonalUserInfo getPersonalUserInfo(int id);
    }
}
