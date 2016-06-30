using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IEnterpriseAdminData
    {
        int id { set; get; }
        string email { set; get; }
        string phoneNum { set; get; }
        string title { set; get; }
        string titleBrief { set; get; }
        string scale { set; get; }
    }
}
