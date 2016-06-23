using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

using IDALFac;
using SqlServerDAL;

namespace DALFac
{
    public class DataContextFactory : IDataContextFactory
    {
        public const int DB_SQL_SERVER = 19;

        public DataContext getDataContext(int dbType)
        {
            DataContext context = null;

            switch (dbType)
            {
                case DB_SQL_SERVER:
                    context = new DataClassesDataContext();
                    break;
            }

            return context;
        }
    }
}
