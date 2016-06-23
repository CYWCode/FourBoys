using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IDAL;

namespace IDALFac
{
    public interface IDataAccessFactory
    {
        public IDataAccess getDataAccess(String type);
    }
}
