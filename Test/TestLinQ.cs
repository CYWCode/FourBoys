using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

using IBLLFac;
using BLLFac;
using IBLL;

namespace Test
{
    class TestLinQ
    {
        static void Main(string[] args)
        {
            // get customer case factory
            ICustomerCaseFactory fac = new CustomerCaseFactory();
            // get customer case list
            List<ICustomerCase> list = fac.getCustomerCaseList();
            // display
            foreach (ICustomerCase item in list)
            {
                Console.WriteLine(item.title);
            }

            // wait
            Console.Read();
        }
    }
}
