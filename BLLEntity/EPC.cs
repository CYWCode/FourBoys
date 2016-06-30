using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLEntity
{
    public class EPC : IBLL.IEPC
    {

        public int id { set; get; }
        public string title { set; get; }
        public int eid { set; get; }
    }
}
