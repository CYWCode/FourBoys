using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Personal
{
    public partial class cooper_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["cooperId"]);

            IBLL.IEnterpriseAdminData data = new BLLFac.AdminHelper().getEnterPrise(id);

            lTitle.Text = data.title;
            lName.Text = data.title;
            lEmail.Text = data.email;
            lScale.Text = data.scale;
        }
    }
}