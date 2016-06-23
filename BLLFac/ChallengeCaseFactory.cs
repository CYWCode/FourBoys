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
        public const int ORDER_BY_TIME = 19;
        public const int ORDER_BY_SALARY = 20;

        private List<IChallengeCase> getChallengeCaseList()
        {
            List<IChallengeCase> list = new List<IChallengeCase>();

            // TODO: get data context factory
            // TODO: get data context
            // TODO: get challenge case from context

            // DELTEME: testCase
            for (int i = 0; i < 10; i++)
            {
                IChallengeCase testCase = new ChallengeCase()
                {
                    id = 19 + i,
                    enterpriseTitle = "测试的测试（北京）有限公司",
                    jobSalary = 10 + i,
                    jobTitle = "[高级] 测试职位" + i,
                    questionNumber = i / 2 + 1
                };
                list.Add(testCase);
            }

            return list;
        }

        public List<IChallengeCase> getChallengeCaseList(int order)
        {
            // FIXME: 改成从data context中.getChallengeCaseList(order)
            List<IChallengeCase> list = getChallengeCaseList();
            IChallengeCase testCase = new ChallengeCase()
            {
                id = 199,
                enterpriseTitle = "测试的测试（北京）有限公司",
                jobSalary = 20,
                jobTitle = "[排序] 这是按照" + order + "排序的结果",
                questionNumber = 3
            };
            list.Add(testCase);
            return list;
        }

        public List<IChallengeCase> getChallengeCaseListByName(string name)
        {
            // FIXME: 改成从data context中.getChallengeCaseListByName(name)
            List<IChallengeCase> list = getChallengeCaseList();
            IChallengeCase testCase = new ChallengeCase()
            {
                id = 200,
                enterpriseTitle = "测试的测试（北京）有限公司",
                jobSalary = 20,
                jobTitle = "[搜索] 这是索搜" + name + "的结果",
                questionNumber = 3
            };
            list.Add(testCase);
            return list;
        }
    }
}
