﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;
using BLLEntity;
using IDALFac;

using SqlServerDAL;

namespace DALFac
{
    public class ChallengeManagementFactory :IChallengeManagementFactory
    {
        public List<IChallengeManagement> getChallengeManagementList()
        {
            List<IChallengeManagement> list = new List<IChallengeManagement>();

            IChallengeManagement challengeManagement1 = new ChallengeManagement()
            {
                id = 1,
                position = "IOS工程师",
                enterpriseTitle = "世纪创新（北京）科技公司",
                jobSalary = 8000,
                questionNumber = 2,
                startTime = DateTime.Parse("2016-6-20 "),
                deadline = DateTime.Parse("2016-7-24 "),
                finishNumber = 169,
                place = "北京"
            
            
            };
            list.Add(challengeManagement1);
            IChallengeManagement challengeManagement2 = new ChallengeManagement()
            {
                id = 2,
                position = "IOS工程师",
                enterpriseTitle = "海量信息",
                jobSalary = 5000,
                questionNumber = 3,
                startTime = DateTime.Parse("2016-6-23 "),
                deadline = DateTime.Parse("2016-7-15 "),
                finishNumber = 100,
                place = "北京"
            };

            list.Add(challengeManagement2);

            IChallengeManagement challengeManagement3 = new ChallengeManagement()
            {
                id = 2,
                position = "JAVA工程师",
                enterpriseTitle = "北京大米",
                jobSalary = 9000,
                questionNumber = 5,
                startTime = DateTime.Parse("2016-5-9"),
                deadline = DateTime.Parse("2016-6-25"),
                finishNumber = 256,
                place = "北京"
            };

            list.Add(challengeManagement3);

            return list;
        }
    }
}
