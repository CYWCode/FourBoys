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


namespace BLLFac
{
    public class ChallengeManagementFactory : IBLLFac.IChallengeManagementFactory
    {
        public List<IChallengeManagement> getChallengeManagementList()
        {
            return new DALFac.ChallengeManagementFactory().getChallengeManagementList();
        }

    }

}
