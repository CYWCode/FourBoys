using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

namespace IBLLFac
{
    public interface IChallengeCaseFactory
    {
        List<IChallengeCase> getChallengeCaseList(int order);
        List<IChallengeCase> getChallengeCaseListByName(string name);
    }
}
