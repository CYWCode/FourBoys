using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

using IBLL;
using IBLLFac;
using BLLEntity;

using IDALFac;
using DALFac;
using SqlServerDAL;

namespace BLLFac
{
    public class ChallengeCaseFactory : IChallengeCaseFactory
    {
        public List<IChallengeCase> getChallengeCaseList()
        {
            List<IChallengeCase> list = new List<IChallengeCase>();

            // TODO: get data context factory
            // TODO: get data context
            // TODO: get challenge case from context

            // DELTEME: testCase
            IChallengeCase testCase = new ChallengeCase() { id = 19, enterpriseTitle = "测试的测试（北京）有限公司", jobSalary = 15, jobTitle = "[高级] 测试职位", questionNumber = 1 };
            list.Add(testCase);

            return list;
        }
    }
}
