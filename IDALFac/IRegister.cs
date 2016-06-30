using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDALFac

{
    public interface IRegister
    {

        /*
       *注册用户 
       * 参数用户名，密码，类型
       * 返回bool
       * by jsk
       */
        bool RegisterPerson(string name, string pwd, int type);


    }
}
