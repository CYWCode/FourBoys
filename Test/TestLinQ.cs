using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Linq;

using IBLLFac;
using BLLFac;
using IBLL;

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
                UserChallengeContent ucc = new UserChallengeContent()
                {
                    无意义主键ID = 99 + i,
                    EnterPrise = "新企业" + i,
                    Position = "新职位",
                    StartTime = new DateTime(2016, 6, i + 1),
                    Pay = 20 - i,
                    Deadline = new DateTime(2016, 6, i + 10),
                    Questions = i / 2 + 1,
                    Number = i / 2
                };
                db.UserChallengeContent.InsertOnSubmit(ucc);
            }
            db.SubmitChanges();

            // wait
            Console.Read();
        }
    }
}
