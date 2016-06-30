using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLFac
{
    public class AdminHelper : IBLLFac.IAdminHelper
    {
        public List<IBLL.IEnterpriseAdminData> getEnterPriseList()
        {
            return new DALFac.AdminHelper().getEnterPriseList();
        }
        public IBLL.IEnterpriseAdminData getEnterPrise(int id)
        {
            List<IBLL.IEnterpriseAdminData> list = getEnterPriseList();
            foreach (IBLL.IEnterpriseAdminData data in list)
            {
                if (data.id == id) return data;
            }
            return null;
        }

        public void deleteEnterpriseUser(int id)
        {
            new DALFac.AdminHelper().deleteEnterpriseUser(id);
        }
    }
}
