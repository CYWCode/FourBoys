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

namespace Web.Unsigned
{
    public partial class customer_case : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get customer case factory
            ICustomerCaseFactory fac = new CustomerCaseFactory();
            // get customer case list
            List<ICustomerCase> list = fac.getCustomerCaseList();
            // bind data source
            logowall.DataSource = list;
            logowall.DataBind();
        }

    }
}