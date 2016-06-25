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
                TableRow newRow = new TableRow() { CssClass = "userTableRow" };

                newRow.Cells.Add(new TableCell() { Text = user.id.ToString(), CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.email, CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.userName, CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.name, CssClass = "userTableCell" });
                string age = user.age.ToString();
                if (user.age == -1) age = "未知";
                newRow.Cells.Add(new TableCell() { Text = age, CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.sex, CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.phoneNumber, CssClass = "userTableCell" });
                newRow.Cells.Add(new TableCell() { Text = user.hunting.ToString(), CssClass = "userTableCell" });

                tableUser.Rows.Add(newRow);
            }
        }
    }
}