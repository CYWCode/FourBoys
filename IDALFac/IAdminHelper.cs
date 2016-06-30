using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDALFac
{
    public interface IAdminHelper
    {
        List<IBLL.IEnterpriseAdminData> getEnterPriseList();
        void deleteEnterpriseUser(int id);
    }
}
