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
        private int sortOrder = ChallengeCaseFactory.ORDER_BY_TIME;

        protected void Page_Load(object sender, EventArgs e)
        {
            // 创建挑战工厂
            factory = new ChallengeCaseFactory();
            // 获取挑战列表
            List<IChallengeCase> list = factory.getChallengeCaseList(sortOrder);
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void selectSalary_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 获取筛选后
            List<IChallengeCase> oriList = factory.getChallengeCaseList(sortOrder);
            List<IChallengeCase> list = doSearch(doSalary(oriList));
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        private List<IChallengeCase> doSalary(List<IChallengeCase> oriList)
        {
            // 最大最小工资
            int index = selectSalary.SelectedIndex;
            int minSalary, maxSalary;
            switch (index)
            {
                case 1:
                    minSalary = 2;
                    maxSalary = 5;
                    break;
                case 2:
                    minSalary = 5;
                    maxSalary = 8;
                    break;
                case 3:
                    minSalary = 8;
                    maxSalary = 10;
                    break;
                case 4:
                    minSalary = 10;
                    maxSalary = 12;
                    break;
                case 5:
                    minSalary = 12;
                    maxSalary = 15;
                    break;
                case 6:
                    minSalary = 15;
                    maxSalary = -1;     // 无上限
                    break;
                default:
                    minSalary = maxSalary = -1;
                    break;
            }
            // 获取筛选后
            return factory.getChallengeCaseListBySalary(oriList, sortOrder, minSalary, maxSalary);
        }

        protected void btnTime_Click(object sender, EventArgs e)
        {
            sortOrder = ChallengeCaseFactory.ORDER_BY_TIME;
            // 获取排序后
            List<IChallengeCase> list = factory.getChallengeCaseList(sortOrder);
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void btnSalary_Click(object sender, EventArgs e)
        {
            sortOrder = ChallengeCaseFactory.ORDER_BY_SALARY;
            // 获取排序后
            List<IChallengeCase> list = factory.getChallengeCaseList(sortOrder);
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void keyWords_id_TextChanged(object sender, EventArgs e)
        {
            List<IChallengeCase> oriList = factory.getChallengeCaseList(sortOrder);
            List<IChallengeCase> list = doSearch(doSalary(oriList));
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            List<IChallengeCase> oriList = factory.getChallengeCaseList(sortOrder);
            List<IChallengeCase> list = doSearch(doSalary(oriList));
            // 绑定数据源
            challengecase.DataSource = list;
            challengecase.DataBind();
        }

        private List<IChallengeCase> doSearch(List<IChallengeCase> oriList)
        {
            string name = keyWords_id.Text;
            if (name.Trim() == "")
            {
                name = null;
            }
            // 获取
            return factory.getChallengeCaseListByName(oriList, sortOrder, name);
        }

    }
}