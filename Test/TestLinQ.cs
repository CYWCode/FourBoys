using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

using IBLLFac;
using BLLFac;
using IBLL;

// 王韵倩

using SqlServerDAL;

namespace Test
{
    class TestLinQ
    {
        static void Main(string[] args)
        {
            DataClassesDataContext db = new DataClassesDataContext();
            for (int i = 0; i < 5; i++)
            {
                User user = new User()
                {
                    UserName = "测试用户" + i,
                    PhoneNum = "测试手机号",
                    Email = "测试邮箱",
                    UserPwd = "测试密码"
                };
                db.User.InsertOnSubmit(user);
            }
            db.SubmitChanges();

            // wait
            Console.Read();
        }
    }
}
