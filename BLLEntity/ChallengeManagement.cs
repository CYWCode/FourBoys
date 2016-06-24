using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using IBLL;

namespace BLLEntity
{
    public class ChallengeManagement:IChallengeManagement
    {
        public int id
        {
            get
          ;
            set;

        }

        public string position
        {
            get
           ;
            set
           ;
        }

        public string enterpriseTitle
        {
            get
            ;
            set
           ;
        }

        public int jobSalary
        {
            get;set
           ;
        }

        public int questionNumber
        {
            get
            ;
            set
            ;
        }

        public DateTime startTime
        {
            get
            ;
            set
            ;
        }

        public DateTime deadline
        {
            get
           ;
            set
            ;
        }

        public int finishNumber
        {
            get
            ;
            set
            ;
        }

        public string place
        {
            get
           ;
            set
            ;
        }
    }
}
