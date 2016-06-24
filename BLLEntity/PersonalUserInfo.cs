using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

namespace BLLEntity
{
    public class PersonalUserInfo : IPersonalUserInfo
    {
        public int id { set; get; }
        public string name { set; get; }
        public int age { set; get; }
        public string sex { set; get; }
        public string phoneNumber { set; get; }
        public List<string> direction { set; get; }
        public bool hunting { set; get; }
        public string resumePath { set; get; }
    }
}
