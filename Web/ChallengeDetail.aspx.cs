using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IBLLFac;
using IBLL;
using BLLFac;

namespace Web
{
    public partial class ChallengeDetail : System.Web.UI.Page
    {

        public List<IChallengeManagement> l;

        protected void Page_Load(object sender, EventArgs e)
        {
            IChallengeManagementFactory CMFactory = new ChallengeManagementFactory();
            List<IChallengeManagement> list = CMFactory.getChallengeManagementList();

            l = list;


        }
    }
}