using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

namespace IDALFac
{
    public interface IChallengeCaseFactory
    {
        List<IChallengeCase> getChallengeCaseList(int order);
    }
}
