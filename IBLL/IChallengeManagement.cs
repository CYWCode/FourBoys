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
        String jobTitle { set; get; }
        String enterpriseTitle { set; get; }
        int jobSalary { set; get; }
        int questionNumber { set; get; }
        String place { set; get; }
        DateTime startTime { set; get; }

    }
}
