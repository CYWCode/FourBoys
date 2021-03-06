﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;
using BLLEntity;
using IDALFac;

using SqlServerDAL;

// 王韵倩

namespace DALFac
{
    public class ChallengeCaseFactory : IDALFac.IChallengeCaseFactory
    {
        public const int ORDER_BY_TIME = 19;
        public const int ORDER_BY_SALARY = 20;

        public List<IChallengeCase> getChallengeCaseList(int order)
        {
            // get data context
            DataClassesDataContext dataContext = new DataClassesDataContext();
            // generate challenge case list
            List<IChallengeCase> list = new List<IChallengeCase>();
            // get list by order
            switch (order)
            {
                case ORDER_BY_TIME:
                    {
                        var oriList = from ucc in dataContext.UserChallengeContent
                                      orderby ucc.StartTime descending
                                      select ucc;
                        foreach (UserChallengeContent item in oriList)
                        {
                            IChallengeCase aCase = new ChallengeCase()
                            {
                                id = (int)item.无意义主键ID,
                                enterpriseTitle = item.EnterPrise,
                                jobTitle = item.Position,
                                jobSalary = (int)item.Pay,
                                questionNumber = (int)item.Questions,
                                startTime = (DateTime) item.StartTime,
                                place = "北京"
                            };
                            list.Add(aCase);
                        }
                    }
                    break;
                case ORDER_BY_SALARY:
                    {
                        var oriList = from ucc in dataContext.UserChallengeContent
                                      orderby ucc.Pay descending
                                      select ucc;
                        foreach (UserChallengeContent item in oriList)
                        {
                            IChallengeCase aCase = new ChallengeCase()
                            {
                                id = (int)item.无意义主键ID,
                                enterpriseTitle = item.EnterPrise,
                                jobTitle = item.Position,
                                jobSalary = (int)item.Pay,
                                questionNumber = (int)item.Questions,
                                startTime = (DateTime)item.StartTime,
                                place = "北京"
                            };
                            list.Add(aCase);
                        }
                    }
                    break;
            }
            // return 
            return list;
        }
    }
}
