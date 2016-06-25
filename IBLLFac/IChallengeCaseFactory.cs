using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

// 王韵倩

namespace IBLLFac
{
    public interface IChallengeCaseFactory
    {
        List<IChallengeCase> getChallengeCaseList(int order);
        List<IChallengeCase> getChallengeCaseListBySalary(List<IChallengeCase> oriList, int order, int min, int max);
        List<IChallengeCase> getChallengeCaseListByName(List<IChallengeCase> oriList, int order, string name);
    }
}
