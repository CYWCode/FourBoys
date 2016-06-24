using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IChallengeManagement
    {
        int id { set; get; }
        String position { set; get; }
        String enterpriseTitle { set; get; }
        int jobSalary { set; get; }
        int questionNumber { set; get; }
        DateTime startTime { set; get; }
        DateTime deadline { set; get; }
        int finishNumber { set; get; }
        String place { set; get; }
    }
}
