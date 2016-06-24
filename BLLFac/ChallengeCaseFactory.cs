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
    public class ChallengeCaseFactory : IBLLFac.IChallengeCaseFactory
    {
        public const int ORDER_BY_TIME = 19;
        public const int ORDER_BY_SALARY = 20;

        public List<IChallengeCase> getChallengeCaseList(int order)
        {
            IDALFac.IChallengeCaseFactory fac = new DALFac.ChallengeCaseFactory();
            List<IChallengeCase> list = null;
            switch (order)
            {
                case ORDER_BY_TIME:
                    list = fac.getChallengeCaseList(DALFac.ChallengeCaseFactory.ORDER_BY_TIME);
                    break;
                case ORDER_BY_SALARY:
                    list = fac.getChallengeCaseList(DALFac.ChallengeCaseFactory.ORDER_BY_SALARY);
                    break;
            }
            return list;
        }

        public List<IChallengeCase> getChallengeCaseListBySalary(List<IChallengeCase> oriList, int order, int min, int max)
        {
            List<IChallengeCase> list = new List<IChallengeCase>();
            // search
            foreach (IChallengeCase aCase in oriList)
            {
                if (min == -1 || aCase.jobSalary >= min)
                {
                    if (max == -1 || aCase.jobSalary <= max)
                    {
                        list.Add(aCase);
                    }
                }
            }

            return list;
        }

        public List<IChallengeCase> getChallengeCaseListByName(List<IChallengeCase> oriList, int order, string name)
        {
            if (name == null)
            {
                return oriList;
            }
            List<IChallengeCase> list = new List<IChallengeCase>();
            // search
            foreach (IChallengeCase aCase in oriList)
            {
                if (aCase.jobTitle.Contains(name) || aCase.enterpriseTitle.Contains(name))
                {
                    list.Add(aCase);
                }
            }

            return list;
        }
    }
}
