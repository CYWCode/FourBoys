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

// 王韵倩

namespace BLLFac
{
    public class CustomerCaseFactory : IBLLFac.ICustomerCaseFactory
    {
        public List<ICustomerCase> getCustomerCaseList()
        {
            return new DALFac.CustomerCaseFactory().getCustomerCaseList();
        }
    }
}
