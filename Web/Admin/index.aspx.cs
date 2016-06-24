using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            IBLLFac.IAdminNumHelper helper = new BLLFac.AdminNumHelper();

            personalUserNum.Text = helper.getPersonalUserNum().ToString();
            challengeNum.Text = helper.getChallengeNum().ToString();
            enterpriseUserNum.Text = helper.getEnterpriseUserNum().ToString();
        }
    }
}