using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Enterprise
{
    public partial class new_recruit_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            new BLLFac.AdminHelper().addChallenge();
            Response.Redirect("oxcoder_corp_index.aspx", false); 
        }
    }
}