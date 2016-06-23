using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
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
            dataContext.User.InsertOnSubmit(testUser);
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
