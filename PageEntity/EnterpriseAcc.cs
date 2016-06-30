using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PageEntity
{
        public class EnterpriseAcc
        {
            private int eaID;
            private int eID;
            private int eaInvNum;
            private int eaChlNum;
            private int eaInvDone;
            private int eaChlDone;
            private DateTime eaPurchaseTime;
            private int eaRechargeState;
            private string eaRechargeCode;
            public EnterpriseAcc()
            {
            }

            public int enterpriseAccId
            {
                set { this.eaID = value; }
                get { return this.eaID; }
            }

            public int enterpriseId
            {
                set { this.eID = value; }
                get { return this.eID; }
            }
            public int enterpriseInvNum
            {
                set { this.eaInvNum = value; }
                get { return this.eaInvNum; }
            }

            public int enterpriseChlNum
            {
                set { this.eaChlNum = value; }
                get { return this.eaChlNum; }
            }
            public int enterpriseInvDone
            {
                set { this.eaInvDone = value; }
                get { return this.eaInvDone; }
            }
            public int enterpriseChlDone
            {
                set { this.eaChlDone = value; }
                get { return this.eaChlDone; }
            }
            public DateTime enterprisePurchaseTime
            {
                set { this.eaPurchaseTime = value; }
                get { return this.eaPurchaseTime; }
            }
            public int enterpriseRechargeState
            {
                set { this.eaRechargeState = value; }
                get { return this.eaRechargeState; }
            }
            public string enterpriseRechargeCode
            {
                set { this.eaRechargeCode = value; }
                get { return this.eaRechargeCode; }
            }
        }
    }


