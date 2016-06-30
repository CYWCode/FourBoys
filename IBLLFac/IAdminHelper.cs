using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLLFac
{
    public interface IAdminHelper
    {
        List<IBLL.IEnterpriseAdminData> getEnterPriseList();
        IBLL.IEnterpriseAdminData getEnterPrise(int id);
        void deleteEnterpriseUser(int id);
    }
}
