using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLEntity
{
    public class EnterpriseAdminData : IBLL.IEnterpriseAdminData
    {
        public int id { set; get; }
        public string email { set; get; }
        public string phoneNum { set; get; }
        public string title { set; get; }
        public string titleBrief { set; get; }
        public string scale { set; get; }
    }
}
