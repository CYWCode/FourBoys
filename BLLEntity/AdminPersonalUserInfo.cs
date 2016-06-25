using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLEntity
{
    public class AdminPersonalUserInfo : IBLL.IAdminPersonalUser
    {
        public int id { set; get; }
        public string email { set; get; }
        public string name { set; get; }
        public int age { set; get; }
        public string sex { set; get; }
        public string phoneNumber { set; get; }
        public bool hunting { set; get; }
    }
}
