using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

// 王韵倩

namespace BLLEntity
{
    public class CustomerCase : ICustomerCase 
    {
        public string title { set; get; }
        public string imgPath { set; get; }
    }
}
