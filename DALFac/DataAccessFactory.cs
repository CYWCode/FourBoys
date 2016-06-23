using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

namespace DALFac
{
    class DataAccessFactory : IDALFac.IDataAccessFactory
    {
        // 数据库类型符
        public static const int DB_DEFAULT = DB_SQLSERVER;
        public static const int DB_SQLSERVER = 19;

        // 获取DataContext
        public static DataContext getDataContext()
        {
            return getDataContext(DB_DEFAULT);
        }

        public static DataContext getDataContext(int dbType)
        {
            // sql server
            if (dbType == DB_SQLSERVER)
            {
                return new DAL.DataClassesDataContext();
            }
            
            return null;
        }
    }
}
