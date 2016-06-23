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
        protected void Page_Load(object sender, EventArgs e)
        {
            // get challenge case factory
            IChallengeCaseFactory fac = new ChallengeCaseFactory();
            // get challenge case list
            List<IChallengeCase> list = fac.getChallengeCaseList();
            // bind data source
            challengecase.DataSource = list;
            challengecase.DataBind();

        }
    }
}