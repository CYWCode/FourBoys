using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

// 用于显示在个人用户首页

namespace BLLEntity
{
    public class ChallengeCase : IChallengeCase
    {
        public int id { set; get; }
        public String jobTitle { set; get; }
        public String enterpriseTitle { set; get; }
        public int jobSalary { set; get; }
        public int questionNumber { set; get; }
        public String place { set; get; }
        public DateTime startTime { set; get; }
    }
}
