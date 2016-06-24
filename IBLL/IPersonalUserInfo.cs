using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IPersonalUserInfo
    {
        int id { set; get; }
        string name { set; get; }
        int age { set; get; }
        string sex { set; get; }
        string phoneNumber { set; get; }
        List<string> direction { set; get; }
        bool hunting { set; get; }
        string resumePath { set; get; }
    }
}
