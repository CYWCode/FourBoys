using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using IDALFac;
using PageEntity;
using DALFac;

namespace BLL
{
    public class EnterpriceCompleteInforBusiness1
    {
        private static readonly IEnterpriceCompleteInfor1 dal = DALFac.DataAccess.CreateEnterpriceCompleteInfor1();

        public void SaveEnterpriceInfo1(string useremail, string wholeName, string shortName,
               string website, string area, string scale, string describe)
        {

            string E_email = useremail;
            string E_wholename = wholeName;
            string E_shortName = shortName;
            string E_web = website;
            string E_area = area;
            string E_scale = scale;
            string E_describe = describe;

    //        dal.SaveEnterpriceInformation1(E_email, E_wholename, E_shortName, E_web, E_area, E_scale, E_describe);
        }

        public bool updatePwd(string oldPwd, string newPwd, string id) //修改密码
        {
            return dal.updatePwd(oldPwd, newPwd, id);
        }

        public PageEntity.EnterpriseAcc getEnterAcc(string id)
        {
            return dal.getEnterAcc(id);
        }
    }
}
