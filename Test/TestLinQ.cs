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
            for (int i = 12; i < 18; i++)
            {

                db.UserChallengeContent.InsertOnSubmit(new UserChallengeContent()
                {
                    Position = "安卓职位",
                    EnterPrise = "" + 13,
                    Questions = i / 3,
                    Pay = 10 + i,
                    Number = 0,
                    StartTime = DateTime.Now,
                    Deadline = DateTime.Now
                });
            }
            db.SubmitChanges();

            // wait1
            Console.Read();
        }
    }
}
