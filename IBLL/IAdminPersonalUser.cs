using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IAdminPersonalUser
    {
        int id { set; get; }
        string email { set; get; }
        string userName { set; get; }
        string name { set; get; }
        int age { set; get; }
        string sex { set; get; }
        string phoneNumber { set; get; }
        bool hunting { set; get; }
    }
}
