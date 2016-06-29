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
        // 页面载入时调用
        protected void Page_Load(object sender, EventArgs e)
        {
            // 创建客户案例工厂
            ICustomerCaseFactory fac = new CustomerCaseFactory();
            // 获取客户案例列表
            List<ICustomerCase> list = fac.getCustomerCaseList();
            // 把List格式的数据源作为绑定到Repeater控件上作为数据源
            logowall.DataSource = list;
            logowall.DataBind();
        }

    }
}