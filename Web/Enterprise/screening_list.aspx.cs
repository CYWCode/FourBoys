using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IBLLFac;
using BLLFac;
using IBLL;

namespace Web.Enterprise
{
    public partial class screening_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // 创建挑战工厂
            IChallengeCaseFactory factory = new ChallengeCaseFactory();
            // 获取挑战列表
            List<IChallengeCase> oriList = factory.getChallengeCaseList(ChallengeCaseFactory.ORDER_BY_TIME);

            List<IChallengeCase> list = new List<IChallengeCase>();
            foreach (IChallengeCase item in oriList)
            {
                if (item.id == Convert.ToInt32(Request["recruitId"]))
                {
                    list.Add(item);
                }
            }

            if (list.Count > 0)
                Label1.Text = list[0].jobTitle;
        }
    }
}