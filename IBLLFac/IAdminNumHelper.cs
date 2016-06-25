using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLLFac
{
    public interface IAdminNumHelper
    {
        int getPersonalUserNum();
        int getChallengeNum();
        int getEnterpriseUserNum();
    }
}
