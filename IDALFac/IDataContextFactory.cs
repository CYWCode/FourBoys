using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

// 王韵倩

namespace IDALFac
{
    public interface IDataContextFactory
    {
        DataContext getDataContext(int dbType);
    }
}
