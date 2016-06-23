using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Linq;

using IBLLFac;
using BLLFac;
using IBLL;

namespace Web.Personal
{
    public partial class index : System.Web.UI.Page
    {
        private IChallengeCaseFactory factory;

        protected void Page_Load(object sender, EventArgs e)
        {
            // get challenge case factory
            factory = new ChallengeCaseFactory();
            // get challenge case list
            List<IChallengeCase> list = factory.getChallengeCaseList(ChallengeCaseFactory.ORDER_BY_TIME);
            // bind data source
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void selectSalary_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TODO: 根据薪水筛选
        }

        protected void selectProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TODO: 根据省份筛选
        }

        protected void btnTime_Click(object sender, EventArgs e)
        {
            // get challenge case list
            List<IChallengeCase> list = factory.getChallengeCaseList(ChallengeCaseFactory.ORDER_BY_TIME);
            // bind data source
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void btnSalary_Click(object sender, EventArgs e)
        {
            // get challenge case list
            List<IChallengeCase> list = factory.getChallengeCaseList(ChallengeCaseFactory.ORDER_BY_SALARY);
            // bind data source
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

    }
}