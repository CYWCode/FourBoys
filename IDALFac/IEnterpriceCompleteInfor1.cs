using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDALFac
{
    public interface IEnterpriceCompleteInfor1
    {
        //保存企业信息
        void SaveEnterpriceInformation1(string useremail, string wholeName, string shortName,
               string website, string area, string scale, string describe);
        bool updatePwd(string oldPwd, string newPwd, string id);
        PageEntity.EnterpriseAcc getEnterAcc(string id);
    }
}
