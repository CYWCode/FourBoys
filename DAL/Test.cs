using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// 王韵倩

namespace SqlServerDAL
{
    public class Test
    {
        private static DataClassesDataContext dataContext = new DataClassesDataContext();

        public static void test()
        {
            Console.WriteLine("Test insert");

            User testUser = new User()
            {
                Email = "test@test.com",
                PhoneNum = "testPhont",
                UserName = "testUser",
                UserPwd = "test"
            };
            //dataContext.User.InsertOnSubmit(testUser);
            //dataContext.SubmitChanges();

            EnterPrise enterPrise = new EnterPrise()
            {
                EPName = "测试企业",
                PhomeNum = "12313",
                Email = "21312@sf.com",
                EPScale = 1,
                ContactInfo = "sfds",
                EPAbbreviation = "sadf"
            };
            dataContext.EnterPrise.InsertOnSubmit(enterPrise);
            dataContext.SubmitChanges();

            Console.WriteLine("Insert tested");
            Console.WriteLine("Test select");

            foreach (User user in dataContext.User)
            {
                Console.WriteLine(user.PhoneNum);
            }

            Console.WriteLine("Select tested");
        }
    }
}
