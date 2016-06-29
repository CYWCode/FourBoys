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
            //if (IsPostBack) return;
            
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

                newRow.Cells.Add(new TableCell());

                Button delButton = new Button() { Text = "删除", ID = "del_" + user.id.ToString() };
                delButton.Click += new EventHandler(HandleDeleteClick);
                newRow.Cells[8].Controls.Add(delButton);

                Button updateButton = new Button() { Text = "修改", ID = "update_" + user.id.ToString() };
                updateButton.Click += new EventHandler(HandleUpdateClick);
                // 通过按钮修改 改为 通过登录来实现修改
                //newRow.Cells[8].Controls.Add(updateButton);

                Button logasButton = new Button() { Text = "登录", ID = "loginas_" + user.id.ToString() };
                logasButton.Click += new EventHandler(HandleLoginAsClick);
                newRow.Cells[8].Controls.Add(logasButton);

                tableUser.Rows.Add(newRow);
            }
        }

        private void HandleDeleteClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            // TODO: 删除
            IAdminNumHelper helper = new AdminNumHelper();
            helper.deletePersonalUser(Convert.ToInt32(idStr));
            Response.AddHeader("Refresh", "0"); 
        }

        private void HandleUpdateClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            //tableUser.Rows[0].Cells[0].Text = "update " + idStr;
        }

        private void HandleLoginAsClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            // TODO: 与用户管理系统连接
            //tableUser.Rows[0].Cells[0].Text = "login as " + idStr;
        }

    }
}