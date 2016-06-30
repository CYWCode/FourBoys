using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using SqlServerDAL;

namespace DALFac
{
    public class AdminHelper : IDALFac.IAdminHelper
    {
        public List<IBLL.IEnterpriseAdminData> getEnterPriseList()
        {
            List<IBLL.IEnterpriseAdminData> list = new List<IBLL.IEnterpriseAdminData>();

            DataClassesDataContext db = new DataClassesDataContext();
            var query = from ep in db.EnterPrise
                        select ep;
            foreach (EnterPrise ep in query)
            {
                string _scale = "未知";
                switch (ep.EPScale) {
                    case 1:
                        _scale = "小型企业";
                        break;
                    default:
                        _scale = "大型企业";
                        break;
                }
                IBLL.IEnterpriseAdminData data = new BLLEntity.EnterpriseAdminData()
                {
                    id = (int)ep.ID,
                    email = ep.Email,
                    phoneNum = ep.PhomeNum,
                    title = ep.EPName,
                    titleBrief = ep.EPAbbreviation,
                    scale = _scale
                };
                list.Add(data);
            }

            return list;
        }
        
        public void deleteEnterpriseUser(int id) {
            DataClassesDataContext context = new DataClassesDataContext();

            var query = from ep in context.EnterPrise
                        where ep.ID == id
                        select ep;
            if (query.Count<EnterPrise>() == 0) return;
            context.EnterPrise.DeleteOnSubmit(query.First<EnterPrise>());
            context.SubmitChanges();
        }
    }

}
