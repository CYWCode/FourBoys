using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IBLL;
using IBLLFac;
using BLLFac;

namespace Web.Admin
{
    public partial class personalUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            
            IAdminNumHelper helper = new AdminNumHelper();
            List<IAdminPersonalUser> list = helper.getPersonUserList();

            foreach (IAdminPersonalUser user in list)
            {
                TableRow newRow = new TableRow();

                newRow.Cells.Add(new TableCell() { Text = user.id.ToString() });
                newRow.Cells.Add(new TableCell() { Text = user.email });
                newRow.Cells.Add(new TableCell() { Text = user.name });
                newRow.Cells.Add(new TableCell() { Text = user.age.ToString() });
                newRow.Cells.Add(new TableCell() { Text = user.sex });
                newRow.Cells.Add(new TableCell() { Text = user.phoneNumber });
                newRow.Cells.Add(new TableCell() { Text = user.hunting.ToString() });

                tableUser.Rows.Add(newRow);
            }
        }
    }
}