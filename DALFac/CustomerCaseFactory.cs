using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;
using IDALFac;
using SqlServerDAL;
using BLLEntity;

namespace DALFac
{
    public class CustomerCaseFactory : ICustomerCaseFactory
    {
        public List<ICustomerCase> getCustomerCaseList()
        {
            List<ICustomerCase> list = new List<ICustomerCase>();

            // get data context factory
            IDataContextFactory factory = new DataContextFactory();
            // get data context
            DataClassesDataContext context = factory.getDataContext(DataContextFactory.DB_SQL_SERVER) as DataClassesDataContext;

            // get customer cases from data context
            foreach (EnterPrise enterprise in context.EnterPrise)
            {
                ICustomerCase aCase = new CustomerCase()
                {
                    title = enterprise.EPName,
                    imgPath = ""
                };
                list.Add(aCase);
            }

            return list;
        }
    }
}
